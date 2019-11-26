import os
import sys
import re
import time
import random
import numpy as np
import scipy.stats as stats
import subprocess
import tempfile
from itertools import product
from multiprocessing import Pool

def parmap(map_size,func,jobs):
    p=Pool(map_size)
    return p.map(func,jobs)

def call_prolog(action,load_files,output,process_name='default'):
    load_files = map(lambda x: "'{}'".format(x),load_files)
    cmd = "load_files([{}],[silent(true)]). ".format(','.join(load_files))
    cmd += '{},halt.'.format(action)
    print(cmd)
    with open(output, 'w') as outf:
        p = subprocess.Popen(['swipl','-q','--{}'.format(process_name)], stdin=subprocess.PIPE, stdout=outf)
        p.stdin.write(cmd.encode())
        (output, err) = p.communicate()

def hexlite_caller(cmd,asp_timeout,size=0, skolems=0):
    params_file_fd, params_file_nm = tempfile.mkstemp()
    p = None
    try:
        with os.fdopen(params_file_fd, 'w') as params_file:
            params_file.write("size({}).\n".format(size))
            params_file.write('\n'.join('skolem({}).'.format(sk) for sk in range(1,skolems+1)))
            params_file.write('\n')
            params_file.flush()

            cmd += " " + params_file_nm
            print(cmd)

            p = subprocess.Popen(cmd.split(), stdin=subprocess.PIPE, stdout=subprocess.PIPE)

            # (out, err) = p.communicate(timeout=max(timeout - time.time(),0))
            (out, err) = p.communicate(timeout=asp_timeout)
            return out.decode('utf-8')
    except subprocess.TimeoutExpired:
        if p is not None:
            p.kill()
        return ""
    finally:
        #os.remove(params_file_nm)
        print(params_file_nm)
        pass

def call_asp(load_files,plugin,output):
    timeout=60*10
    max_clauses=100000
    cmdprefix = "hexlite --flpcheck=none -n=1 --pluginpath . --plugin " + plugin + " -- " + ' '.join(load_files)
    start = time.time()
    with open(output, 'w') as outf:
        try:
            for size in range(1,max_clauses+1):
                for skolems in range(0,size):
                    outf.write("%size: {}, skolems: {}\n".format(size, skolems))
                    outf.flush()
                    end = time.time()

                    if (end-start) > timeout:
                        print('%fail,timeout\n', file=outf)
                        return

                    out = hexlite_caller(cmdprefix, timeout-(end-start), size, skolems)
                    # out = hexlite_caller(cmdprefix, timeout, size, skolems)

                    if out.endswith("}\n"): # found a model
                        metas = re.findall(r'meta\(\w+,\w+,\d+,\([\w,]+\)\)',out)
                        rules = sorted(parse_asp_meta(m) for m in metas)
                        print('\n'.join(rules), file=outf)
                        return

            print('%fail,program too large\n', file=outf)
        finally:
            end = time.time()
            print('%time,{}\n'.format(end-start), file=outf)

def parse_asp_meta(meta):
    match = re.match(r'meta\((\w+),\w+,\d+,\(([\w,]+)\)\)',meta)
    rule, subs = match.group(1), match.group(2)
    subs = subs.split(',')

    def rename(f):
        if '0' <= f <= '9':
            return 'f' + f
        return f
    subs = map(rename, subs)

    if rule == 'monadic':
        return "dyadic_bk({0},A,A):-deduced({2},A).\npred({0},2).".format(*subs)
    if rule == 'ident':
        return "dyadic_bk({0},A,B):-deduced({2},A,B).\npred({0},2).".format(*subs)
    if rule == 'dident':
        return "dyadic_bk({0},A,B):-deduced({1},A,B),deduced({2},A,B).\npred({0},2).".format(*subs)
    if rule == 'twident':
        return "dyadic_bk({0},A,B):-deduced({1},A,C),deduced({2},B,C).\npred({0},2).".format(*subs)
    if rule == 'precon':
        return "dyadic_bk({0},A,B):-deduced({1},A),deduced({2},A,B).\npred({0},2).".format(*subs)
    if rule == 'postcon':
        return "dyadic_bk({0},A,B):-deduced({1},A,B),deduced({2},B).\npred({0},2).".format(*subs)
    if rule == 'chain':
        return "dyadic_bk({0},A,B):-deduced({1},A,C),deduced({2},C,B).\npred({0},2).".format(*subs)
    if rule == 'tailrec':
        return "dyadic_bk({0},A,B):-deduced({2},A,C),deduced({0},C,B).\npred({0},2).".format(*subs)
    if rule == 'ifthenelse':
        return "dyadic_bk({0},A,B):-ifthenelse(A,B,{1},{2},{3}).\npred({0},2).".format(*subs)
    if rule == 'until':
        return "dyadic_bk({0},A,B):-until(A,B,{1},{2}).\npred({0},2).".format(*subs)
    if rule == 'map':
        return "dyadic_bk({0},A,B):-map({2},A,B).\npred({0},2).".format(*subs)

# parmap(1,learn,product(num_train_examples,trials,modes,paradigms,[max_clauses]))

def learn(input):
    (m,k,mode,paradigm)=input
    data='data/{}/train-{}-{}.pl'.format(paradigm,m,k)
    program='programs/{}/{}-{}-{}.pl'.format(paradigm,mode,m,k)
    metagol='../metagol_{}'.format(mode)
    if paradigm == 'pl':
        call_prolog('learn',[metagol,data,'experiment'],program)
    elif paradigm == 'asp':
        files = [data,'experiment.asp.pl','experiment-bk.asp.pl']
        if mode == 'old':
            files += ['experiment-metarules-fo.asp.pl']
        if mode == 'new':
            files += ['experiment-bk-ho.asp.pl','experiment-metarules-ho.asp.pl']
        call_asp(files,'experiment-hexlite-plugin',program)
    else:
        assert False

def do_test(input):
    (m,k,mode,paradigm)=input
    data='data/{}/test-{}-{}.pl'.format(paradigm,m,k)
    program='programs/{}/{}-{}-{}.pl'.format(paradigm,mode,m,k)
    results='results/{}/{}-{}-{}.pl'.format(paradigm,mode,m,k)
    if paradigm == 'pl':
        call_prolog('do_test',[data,program,'experiment'],results)
    elif paradigm == 'asp':
        load_files = [program,'experiment-bk.asp.pl','experiment-bk-ho.asp.pl']
        with open(results, 'w') as results_file:
            for example in open(data,'r').readlines():
                example_file_fd, example_file_nm = tempfile.mkstemp()
                with os.fdopen(example_file_fd, 'w') as example_file:
                    example_file.write(example)
                    example_file.flush()
                    # print(example)
                    cmd = "hexlite --flpcheck=none -n=1 --pluginpath . --plugin experiment-hexlite-plugin -- " + ' '.join(load_files + [example_file_nm])
                    out = hexlite_caller(cmd, 10*60)
                    results_file.write("1\n" if out.endswith("}\n") else "0\n")
    else:
        assert False

def get_accs(mode,paradigm,m,trials):
    accs=[]
    for k in trials:
        k_accs=[]
        with open('results/{}/{}-{}-{}.pl'.format(paradigm,mode,m,k),'r') as f:
            for line in f:
                line=line.strip()
                try:
                    k_accs.append(float(line))
                except:
                    pass
        accs.append(np.mean(k_accs)*100)
    return np.mean(accs),stats.sem(accs)

def get_times(mode,paradigm,m,trials):
    times = []
    for k in trials:
        with open('programs/{}/{}-{}-{}.pl'.format(paradigm,mode,m,k)) as f:
            for line in f:
                xs = line.strip().split(',')
                if xs[0]!='%time':
                  continue
                times.append(float(xs[1]))
    if len(times) < len(trials):
        times = times + (len(trials) - len(times))*[600]
    return np.mean(times),stats.sem(times)

def results(modes,paradigms,num_train_examples,trials,round_times=True):
    print("#accuracies - (number examples, average) +- (0, std err)")
    for paradigm, mode in product(paradigms,modes):
        print('####',paradigm,mode,'####')
        for m in num_train_examples:
            (acc,err) = get_accs(mode,paradigm,m,trials)
            print('({},{}) +- (0,{})'.format(m*2,int(acc),int(err)))
        print('###')
    print('#~~~~~~~~~~~~~~~~~~~~~')
    print("#learning times - (number examples, average) +- (0, std err)")
    for paradigm, mode in product(paradigms,modes):
        print('#===',paradigm,mode,'====')
        for m in num_train_examples:
            (x,y) = get_times(mode,paradigm,m,trials)
            if round_times:
                print('({},{}) +- (0,{})'.format(m*2,int(x),int(y)))
            else:
                print('({},{}) +- (0,{})'.format(m*2,x,y))
        print('#---')
