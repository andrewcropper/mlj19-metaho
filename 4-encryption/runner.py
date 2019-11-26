import sys
import string
sys.path.append('../')
from common import *

# max_clauses=3 # FIXME: arbitrary bound on clauses in ASP induction. Remove when running full FO experiment

alphabet=string.ascii_lowercase[0:26] # all of the alphabet
min_symbols=1
max_symbols=20

map_size=3
num_train_examples = list(range(1,10))
num_test_examples = 1000 
trials = list(range(1,10))
modes = ['old','new']
paradigms = ['pl']
pos_shift=1

def next_char(x,shift):
    xcode=ord(x)-97
    xcode+=shift
    xcode=xcode%len(alphabet)
    xcode=97+xcode
    return chr(xcode)

def gen_pos(paradigm):
    sample_size=random.randrange(min_symbols,max_symbols+1)
    ys=random.choices(alphabet,k=sample_size)
    xs=[next_char(y,pos_shift) for y in ys]
    return (xs,ys)

def gen_neg(paradigm):
    sample_size=random.randrange(min_symbols,max_symbols+1)
    ys=random.choices(alphabet,k=sample_size)
    neg_shift=random.choice([i for i in range(0,len(alphabet)-1) if i != pos_shift])
    xs=[next_char(y,neg_shift) for y in ys]
    return (xs,ys)

def gen_data(inp):
    (m,k,paradigm) = inp
    formatter = {'pl': lambda xy: (str(xy[0]),str(xy[1])),
                 'asp': lambda xy: ('f', '"' + str(xy[0]) + '"', '"' + str(xy[1]) + '"')
                 }[paradigm]

    with open('data/{}/train-{}-{}.pl'.format(paradigm,m,k),'w') as f:
        for i in range(m):
            f.write('pos_ex(' + ','.join(formatter(gen_pos(paradigm))) + ').\n')
        for i in range(m):
            f.write('neg_ex(' + ','.join(formatter(gen_neg(paradigm))) + ').\n')

    with open('data/{}/test-{}-{}.pl'.format(paradigm,m,k),'w') as f:
        for i in range(num_test_examples):
            f.write('pos_ex(' + ','.join(formatter(gen_pos(paradigm))) + ').\n')
        for i in range(num_test_examples):
            f.write('neg_ex(' + ','.join(formatter(gen_neg(paradigm))) + ').\n')

for folder, paradigm in product(['data','programs','results'],paradigms):
    os.makedirs('./{}/{}'.format(folder, paradigm), exist_ok=True)

for paradigm in paradigms:
    parmap(map_size,gen_data,product(num_train_examples,trials,[paradigm]))
    learn_map_size = map_size if paradigm == 'pl' else 1
    parmap(learn_map_size,learn,product(num_train_examples,trials,modes,[paradigm]))
    parmap(map_size,do_test,product(num_train_examples,trials,modes,[paradigm]))

results(modes,paradigms,num_train_examples,trials)
