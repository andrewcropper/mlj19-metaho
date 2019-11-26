import dlvhex
import sys
import ast

# def pyTail(x):
#     print('PYTAIL',x)
#     x=x.value()[1:-1]
#     xs=x.split(',')
#     # print(xs)
#     t= '"' + ','.join(xs[1:]) + '"'
#     # print(x)
#     print('TAIL:',t)
#     dlvhex.output(t)

def myparse(x):
    return x.value().strip()[1:-1]

def is_list(x):
    if len(x) < 4:
        return False
    return x[0:2] =='"[' and x[-2] == ']"'

def pyTail(l):
    l = ast.literal_eval(l.value()[1:-1])
    if type(l) != list or len(l) == 0:
        return
    dlvhex.output(('"' + str(l[1:]) + '"',))
    return
    
    x=inp
    x=x.value()
    if not is_list(x):
        return
    x = x[2:-2]
    if x == '':
        return
    xs=list(x)
    t='"{}"'.format(''.join(xs[1:]))
    # print('pyTail',inp)
    dlvhex.output((t,))

def pyHead(l):
    l = ast.literal_eval(l.value()[1:-1])
    if type(l) != list or len(l) == 0:
        return
    hexval = str(l[0])
    if type(l[0]) == str:
        hexval = "'" + hexval + "'"
    dlvhex.output(('"' + hexval  + '"',))
    return
#def pyHead(inp):
#    x=inp
#    x=x.value()
#    if not is_list(x):
#        return
#    x = x[1:-1]
#    if x == '':
#        return
#    h="'{}'".format(x[0])
#    # print('pyHead',inp)
#    dlvhex.output((h,))

def pyPrepend(h,t):
    h = ast.literal_eval(h.value()[1:-1])
    t = ast.literal_eval(t.value()[1:-1])
    if type(t) != list:
        return
    dlvhex.output(('"' + str([h] + t) + '"',))
#    h=h.value()
#    t=t.value()
#    # print('pyPrepend',h,t)
#    l='"{}"'.format(h[1:-1]+t[1:-1])
#    # print('pyPrepend',h,t)
#    dlvhex.output((l,))

def pyReverse(l):
    #print("l0:", l,file=sys.stderr)
    l = l.value()[1:-1]
    #print("l1:", l,file=sys.stderr)
    l = ast.literal_eval(l)
    if type(l) != list:
        return
    dlvhex.output(('"' + str(list(reversed(l))) + '"',))
#def pyReverse(l):
#    l=l.value()
#    if not is_list(l):
#        return
#    x = x[1:-1]
#    if x == '':
#        return
#    h="'{}'".format(x[0])
#    # print('pyHead',inp)
#    dlvhex.output((h,))
#    h=h.value()
#    t=t.value()
#    # print('pyPrepend',h,t)
#    l='"{}"'.format(h[1:-1]+t[1:-1])
#    # print('pyPrepend',h,t)
#    dlvhex.output((l,))

def pySucc(inp):
    x=inp
    x=x.value().strip()
    print(x)
    if len(x) < 2:
        return
    if x[0] == "'" and x[2] == "'":
        v = x[1]
        if v == 'j':
            return
        v="'{}'".format(chr(ord(v)+1))
        # print(x,v)
        # print('pySucc',inp)
        dlvhex.output((v,))

def pyEmpty(l):
    if l == '"[]"':
        dlvhex.output(())

def pyDbg(x):
    print('pyDbg',x,file=sys.stderr)
    dlvhex.output(())

def get_prop():
    prop = dlvhex.ExtSourceProperties()
    prop.addFiniteOutputDomain(0)

def reg_dyadic(name):
    dlvhex.addAtom(name, (dlvhex.CONSTANT, ), 1, get_prop())

def reg_triadic(name):
    dlvhex.addAtom(name, (dlvhex.CONSTANT,dlvhex.CONSTANT), 1, get_prop())

def register():
    reg_dyadic('pyTail')
    reg_dyadic('pyHead')
    #reg_dyadic('pySucc')
    reg_dyadic('pyReverse')
    reg_triadic('pyPrepend')

    dlvhex.addAtom('pyDbg', (dlvhex.CONSTANT,), 0, get_prop())
    dlvhex.addAtom('pyEmpty', (dlvhex.CONSTANT,), 0, get_prop())
    # prop = dlvhex.ExtSourceProperties()
    # prop.addFiniteOutputDomain(0)
    # dlvhex.addAtom("pyTail", (dlvhex.CONSTANT, ), 1, prop)
