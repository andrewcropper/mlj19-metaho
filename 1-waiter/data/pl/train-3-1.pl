pos_ex(s(1,10,[p(1,tea,down,empty),p(2,coffee,down,empty),p(3,tea,down,empty),p(4,tea,down,empty),p(5,coffee,down,empty),p(6,tea,down,empty),p(7,coffee,down,empty),p(8,coffee,down,empty),p(9,coffee,down,empty)]),s(10,10,[p(1,tea,up,tea),p(2,coffee,up,coffee),p(3,tea,up,tea),p(4,tea,up,tea),p(5,coffee,up,coffee),p(6,tea,up,tea),p(7,coffee,up,coffee),p(8,coffee,up,coffee),p(9,coffee,up,coffee)])).
pos_ex(s(1,4,[p(1,tea,down,empty),p(2,tea,down,empty),p(3,coffee,down,empty)]),s(4,4,[p(1,tea,up,tea),p(2,tea,up,tea),p(3,coffee,up,coffee)])).
pos_ex(s(1,11,[p(1,coffee,down,empty),p(2,tea,down,empty),p(3,coffee,down,empty),p(4,tea,down,empty),p(5,coffee,down,empty),p(6,tea,down,empty),p(7,coffee,down,empty),p(8,tea,down,empty),p(9,coffee,down,empty),p(10,tea,down,empty)]),s(11,11,[p(1,coffee,up,coffee),p(2,tea,up,tea),p(3,coffee,up,coffee),p(4,tea,up,tea),p(5,coffee,up,coffee),p(6,tea,up,tea),p(7,coffee,up,coffee),p(8,tea,up,tea),p(9,coffee,up,coffee),p(10,tea,up,tea)])).
neg_ex(s(1,6,[p(1,coffee,down,empty),p(2,tea,down,empty),p(3,tea,down,empty),p(4,coffee,down,empty),p(5,coffee,down,empty)]),s(6,6,[p(1,coffee,up,coffee),p(2,tea,up,tea),p(3,tea,up,coffee),p(4,coffee,up,coffee),p(5,coffee,up,coffee)])).
neg_ex(s(1,10,[p(1,tea,down,empty),p(2,tea,down,empty),p(3,tea,down,empty),p(4,tea,down,empty),p(5,tea,down,empty),p(6,tea,down,empty),p(7,coffee,down,empty),p(8,coffee,down,empty),p(9,coffee,down,empty)]),s(10,10,[p(1,tea,up,tea),p(2,tea,up,tea),p(3,tea,up,tea),p(4,tea,down,empty),p(5,tea,up,tea),p(6,tea,up,tea),p(7,coffee,up,coffee),p(8,coffee,up,coffee),p(9,coffee,up,coffee)])).
neg_ex(s(1,11,[p(1,tea,down,empty),p(2,tea,down,empty),p(3,coffee,down,empty),p(4,tea,down,empty),p(5,coffee,down,empty),p(6,coffee,down,empty),p(7,coffee,down,empty),p(8,coffee,down,empty),p(9,tea,down,empty),p(10,tea,down,empty)]),s(11,11,[p(1,tea,up,coffee),p(2,tea,down,empty),p(3,coffee,up,coffee),p(4,tea,down,empty),p(5,coffee,up,tea),p(6,coffee,up,tea),p(7,coffee,up,tea),p(8,coffee,down,empty),p(9,tea,down,empty),p(10,tea,down,empty)])).
