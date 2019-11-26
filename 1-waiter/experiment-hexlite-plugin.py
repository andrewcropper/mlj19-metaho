import dlvhex
import ast

def parse(x):
    x=x.value()[1:-1]
    xs=x.split(',')
    (pos,end,places) = int(xs[0]),int(xs[1]),list(map(lambda x: x.split('-'), xs[2:]))
    return (pos,end,places)

def output(pos,end,places):
    places=list(map(lambda x: '-'.join(x),places))
    return '"{},{},{}"'.format(pos,end,','.join(places))

def wants_tea(x):
    (pos,end,places)=parse(x)
    if pos >= end:
        return
    if places[pos-1][0] == 'tea':
        dlvhex.output(())

def wants_coffee(x):
    (pos,end,places)=parse(x)
    if pos >= end:
        return
    if places[pos-1][0] == 'coffee':
        dlvhex.output(())

def at_end(x):
    (pos,end,places)=parse(x)
    if pos == end:
        dlvhex.output(())

def move_right(x):
    (pos,end,places)=parse(x)
    if pos< end:
        y=output(pos+1,end,places)
        # print('move_right',x)
        # print('move_right',y)
        dlvhex.output((y,))

def pour_coffee(x):
    (pos,end,places)=parse(x)
    if pos >= end:
        return
    place=places[pos-1]
    if place[1] == 'up' and place[2] == 'empty':
        place[2]='coffee'
        places[pos-1]=place
        y=output(pos,end,places)
        # print('pour_coffee',x)
        # print('pour_coffee',y)
        dlvhex.output((y,))

def pour_tea(x):
    (pos,end,places)=parse(x)
    if pos >= end:
        return
    place=places[pos-1]
    if place[1] == 'up' and place[2] == 'empty':
        place[2]='tea'
        places[pos-1]=place
        y=output(pos,end,places)
        # print('pour_tea',x)
        # print('pour_tea',y)
        dlvhex.output((y,))

def turn_cup_over(x):
    (pos,end,places)=parse(x)
    if pos >= end:
        return
    place=places[pos-1]
    # print(turn_cup_over,x)
    if place[1] == 'down':
        place[1]='up'
        places[pos-1]=place
        y=output(pos,end,places)
        # print('turn_cup_over',x)
        # print('turn_cup_over',y)
        dlvhex.output((y,))

def dbg(x):
    # pass
    print('dbg',x)
    # return True
    dlvhex.output(())


def pysum(x):
    xs=x.value()[1:-1].split(',')
    xs=list(map(lambda x: int(x),xs))
    cnt=sum(xs)
    # print(x,cnt)
    dlvhex.output((cnt,))

def get_prop():
    prop = dlvhex.ExtSourceProperties()
    prop.addMonotonicInputPredicate(0)
    prop.addFiniteOutputDomain(0)

def reg_monadic(name):
    dlvhex.addAtom(name, (dlvhex.CONSTANT,), 0, get_prop())

def reg_dyadic(name):
    dlvhex.addAtom(name, (dlvhex.CONSTANT, ), 1, get_prop())

def reg_triadic(name):
    dlvhex.addAtom(name, (dlvhex.CONSTANT,dlvhex.CONSTANT), 1, get_prop())

def register():
    reg_dyadic('pysum')
    reg_dyadic('move_right')
    reg_dyadic('turn_cup_over')
    reg_dyadic('pour_tea')
    reg_dyadic('pour_coffee')
    reg_monadic('wants_tea')
    reg_monadic('dbg')
    reg_monadic('wants_coffee')
    reg_monadic('at_end')
