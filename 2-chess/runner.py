import sys
sys.path.append('../')
from common import *
map_size=3
asp_max_pieces=4
num_train_examples = list(range(1,11))
num_test_examples = 1000
trials = list(range(1,11))
modes = ['old','new']
paradigms = ['pl','asp']

pieces=[('k','k1'),('q','q1'),('b','b1'),('b','b2'),('n','n1'),('n','n2'),('r','r1'),('r','r2'),('p','p1'),('p','p2'),('p','p3'),('p','p4'),('p','p5'),('p','p6'),('p','p7')]
positions = list(product(range(1,9),range(1,9)))

def gen_pos(paradigm):
    max_pieces = len(pieces) if paradigm == 'pl' else asp_max_pieces
    k=random.randrange(0,min(len(pieces),max_pieces))
    samp_pieces=[('p','p8')] + random.sample(pieces,k)
    samp_positions=random.sample(positions,len(samp_pieces))
    xs = [(piece,id,*samp_positions[i]) for i,(piece,id) in enumerate(samp_pieces)]
    ys = [(piece,id,x,8) if piece == 'p' else (piece,id,x,y) for (piece,id,x,y) in xs]
    return (xs,ys)

def gen_neg(paradigm):
    (xs,ys) = gen_pos(paradigm)
    pawns= [id for (piece,id,x,y) in ys if piece == 'p']
    k=random.randrange(1,len(pawns)+1)
    to_mutate = set(random.sample(pawns,k))
    ys = [(piece,id,x,random.randrange(1,8)) if piece == 'p' and id in to_mutate  else (piece,id,x,y) for (piece,id,x,y) in ys]
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
