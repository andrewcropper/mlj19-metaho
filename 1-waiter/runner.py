import sys
sys.path.append('../')
from common import *

params = {'pl':{},'asp':{}}
params['pl']['max_size']=10
params['asp']['max_size']=4

num_train_examples = range(1,11)
num_test_examples = 1000
trials = range(1,11)
map_size=4
modes = ['old','new']
paradigms = ['asp','pl']

def rand_drink_pref():
    return random.choice(['tea','coffee'])

def format_examples_pl(data):
    def state_pp(st):
        places = "["+','.join("p({},{},{},{})".format(*pos) for pos in st[2]) + "]"
        return "s({},{},{})".format(st[0],st[1],places)
    return [state_pp(data[0]),state_pp(data[1])]

def format_examples_asp(data):
    def state_pp(st):
        places = ','.join("{1}-{2}-{3}".format(*pos) for pos in st[2])
        return '"{},{},{}"'.format(st[0],st[1],places)
    return ['f',state_pp(data[0]),state_pp(data[1])]

def gen_pos(paradigm):
    max_size=params[paradigm]['max_size']
    spacesize = random.randrange(2,max_size+1)
    prefs = [(i,rand_drink_pref()) for i in range(1,spacesize+1)]
    places1= ((pos,pref,'down','empty') for (pos,pref) in prefs)
    places2= ((pos,pref,'up',pref) for (pos,pref) in prefs)
    s1=(1,spacesize+1,places1)
    s2=(spacesize+1,spacesize+1,places2)
    return (s1,s2)

def gen_neg(paradigm):
    max_size=params[paradigm]['max_size']
    spacesize = random.randrange(2,max_size+1)

    def rand_place_pair(original_pref):
        x1=random.choice(['up','down'])
        if x1 == 'down':
            return (x1,'empty')
        if original_pref == 'tea':
            return (x1,'coffee')
        return (x1,'tea')

    def perturbe(prefs):
        n=len(prefs)
        k=random.randrange(1,n)
        positions=set(random.sample(range(1,n+1),k))
        out=[]
        for pos,pref in prefs:
            if pos not in positions:
                out.append((pos,pref,'up',pref))
            else:
                out.append((pos,pref,*rand_place_pair(pref)))
        return out

    prefs = [(i,rand_drink_pref()) for i in range(1,spacesize+1)]
    places1= ((pos,pref,'down','empty') for (pos,pref) in prefs)
    places2=perturbe(prefs)
    s1=(1,spacesize+1,places1)
    s2=(spacesize+1,spacesize+1,places2)
    return (s1,s2)

# m=num_train
# k=trial
def gen_data(input):
    (m,k,paradigm) = input
    formatter = {'pl': format_examples_pl, 'asp': format_examples_asp}[paradigm]
    with open('data/{}/train-{}-{}.pl'.format(paradigm,m,k),'w') as f:
        for i in range(m):
            f.write('pos_ex(' + ','.join(formatter(gen_pos(paradigm))) + ').\n')
        for i in range(m):
            f.write('neg_ex(' + ','.join(formatter(gen_neg(paradigm))) + ').\n')

    #formatter = format_examples_pl # tests are always run by prolog
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
