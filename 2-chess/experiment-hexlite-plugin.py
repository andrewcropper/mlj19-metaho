import dlvhex
import sys
import ast


def pyForward(l):
    l = ast.literal_eval(l.value()[1:-1])
    if type(l) != tuple or len(l) != 4:
        return
    (type_,id_,x,y) = l
    if y < 8:
        dlvhex.output(('"' + str((type_,id_,x,y+1)) + '"',))

def pyRank8(l, polarity):
    l = ast.literal_eval(l.value()[1:-1])
    if type(l) != tuple or len(l) != 4:
        return
    (type_,id_,x,y) = l
    if (polarity == '1' and y == 8) or (polarity == '0' and y != 8):
        dlvhex.output(())

def pyPawn(l, polarity):
    l = ast.literal_eval(l.value()[1:-1])
    if type(l) != tuple or len(l) != 4:
        return
    (type_,id_,x,y) = l
    if (polarity == '1' and type_ == 'p') or (polarity == '0' and type_ != 'p'):
        dlvhex.output(())

def pyHead(l):
    l = ast.literal_eval(l.value()[1:-1])
    if type(l) != list or len(l) == 0:
        return
    hexval = str(l[0])
    if type(l[0]) == str:
        hexval = "'" + hexval + "'"
    dlvhex.output(('"' + hexval  + '"',))
    return

def pyTail(l):
    l = ast.literal_eval(l.value()[1:-1])
    if type(l) != list or len(l) == 0:
        return
    dlvhex.output(('"' + str(l[1:]) + '"',))

def pyEmpty(l):
    if l == '"[]"':
        dlvhex.output(())

#####################
def pyPiece(l):
    l = ast.literal_eval(l.value()[1:-1])
    if type(l) == tuple and len(l) == 4:
        dlvhex.output(())

def pyPrepend(h,t):
    h = ast.literal_eval(h.value()[1:-1])
    t = ast.literal_eval(t.value()[1:-1])
    if type(t) != list:
        return
    dlvhex.output(('"' + str([h] + t) + '"',))

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
    reg_dyadic('pyForward')
    dlvhex.addAtom('pyRank8', (dlvhex.CONSTANT, dlvhex.CONSTANT), 0, get_prop())
    dlvhex.addAtom('pyPawn', (dlvhex.CONSTANT, dlvhex.CONSTANT), 0, get_prop())
    reg_dyadic('pyHead')
    reg_dyadic('pyTail')
    dlvhex.addAtom('pyEmpty', (dlvhex.CONSTANT,), 0, get_prop())

    dlvhex.addAtom('pyPiece', (dlvhex.CONSTANT,), 0, get_prop())
    reg_triadic('pyPrepend')
    dlvhex.addAtom('pyDbg', (dlvhex.CONSTANT,), 0, get_prop())
    # prop = dlvhex.ExtSourceProperties()
    # prop.addFiniteOutputDomain(0)
    # dlvhex.addAtom("pyTail", (dlvhex.CONSTANT, ), 1, prop)
