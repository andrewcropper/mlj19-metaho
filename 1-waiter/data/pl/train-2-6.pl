pos_ex(s(1,8,[p(1,coffee,down,empty),p(2,coffee,down,empty),p(3,tea,down,empty),p(4,coffee,down,empty),p(5,tea,down,empty),p(6,coffee,down,empty),p(7,coffee,down,empty)]),s(8,8,[p(1,coffee,up,coffee),p(2,coffee,up,coffee),p(3,tea,up,tea),p(4,coffee,up,coffee),p(5,tea,up,tea),p(6,coffee,up,coffee),p(7,coffee,up,coffee)])).
pos_ex(s(1,7,[p(1,tea,down,empty),p(2,coffee,down,empty),p(3,coffee,down,empty),p(4,tea,down,empty),p(5,tea,down,empty),p(6,coffee,down,empty)]),s(7,7,[p(1,tea,up,tea),p(2,coffee,up,coffee),p(3,coffee,up,coffee),p(4,tea,up,tea),p(5,tea,up,tea),p(6,coffee,up,coffee)])).
neg_ex(s(1,9,[p(1,tea,down,empty),p(2,tea,down,empty),p(3,tea,down,empty),p(4,tea,down,empty),p(5,tea,down,empty),p(6,tea,down,empty),p(7,tea,down,empty),p(8,coffee,down,empty)]),s(9,9,[p(1,tea,up,coffee),p(2,tea,down,empty),p(3,tea,up,tea),p(4,tea,up,tea),p(5,tea,up,tea),p(6,tea,up,tea),p(7,tea,down,empty),p(8,coffee,down,empty)])).
neg_ex(s(1,7,[p(1,coffee,down,empty),p(2,coffee,down,empty),p(3,tea,down,empty),p(4,coffee,down,empty),p(5,coffee,down,empty),p(6,tea,down,empty)]),s(7,7,[p(1,coffee,up,coffee),p(2,coffee,up,tea),p(3,tea,up,tea),p(4,coffee,down,empty),p(5,coffee,up,coffee),p(6,tea,up,coffee)])).
