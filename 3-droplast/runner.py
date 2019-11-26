import sys
import string
sys.path.append('../')
from common import *

params={'pl':{},'asp':{}}
params['pl']['max_rows']=10
params['pl']['max_cols']=10
params['asp']['max_rows']=3
params['asp']['max_cols']=3

map_size=8
num_train_examples = range(1,11)
num_test_examples = 1000
trials = range(1,11)
modes = ['old','new']
paradigms = ['pl','asp']

min_rows=2
min_cols=2


def gen_pos(paradigm):
    max_cols=params[paradigm]['max_cols']
    max_rows=params[paradigm]['max_cols']

    xs=[random.sample(string.ascii_lowercase,random.randrange(min_cols,max_cols+1)) for i in range(random.randrange(min_rows,max_rows+1))]
    xs=sorted(xs,key=lambda x: len(x))
    ys=[x[:-1] for x in xs]
    return (xs,ys)

def gen_neg(paradigm):
    max_cols=params[paradigm]['max_cols']
    max_rows=params[paradigm]['max_cols']
    xs=[random.sample(string.ascii_lowercase,random.randrange(min_cols,max_cols+1)) for i in range(random.randrange(min_rows,max_rows+1))]
    xs=sorted(xs,key=lambda x: len(x))
    skips=set(random.sample(range(len(xs)),random.randrange(1,len(xs))))
    ys=[x if i in skips else x[:-1] for i,x in enumerate(xs)]
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
    parmap(map_size,learn,product(num_train_examples,trials,modes,[paradigm]))
    parmap(map_size,do_test,product(num_train_examples,trials,modes,[paradigm]))

results(modes,paradigms,num_train_examples,trials)
