pos_ex([('p', 'p8', 3, 6), ('p', 'p4', 1, 5), ('p', 'p3', 2, 7)],[('p', 'p8', 3, 8), ('p', 'p4', 1, 8), ('p', 'p3', 2, 8)]).
pos_ex([('p', 'p8', 1, 3), ('n', 'n1', 6, 1), ('p', 'p2', 1, 1), ('r', 'r1', 3, 5), ('p', 'p7', 3, 8), ('n', 'n2', 2, 6), ('q', 'q1', 8, 3), ('r', 'r2', 4, 8), ('p', 'p4', 4, 4), ('p', 'p6', 6, 4), ('b', 'b1', 2, 4)],[('p', 'p8', 1, 8), ('n', 'n1', 6, 1), ('p', 'p2', 1, 8), ('r', 'r1', 3, 5), ('p', 'p7', 3, 8), ('n', 'n2', 2, 6), ('q', 'q1', 8, 3), ('r', 'r2', 4, 8), ('p', 'p4', 4, 8), ('p', 'p6', 6, 8), ('b', 'b1', 2, 4)]).
pos_ex([('p', 'p8', 5, 1), ('q', 'q1', 8, 1)],[('p', 'p8', 5, 8), ('q', 'q1', 8, 1)]).
pos_ex([('p', 'p8', 2, 2), ('p', 'p7', 6, 1), ('p', 'p3', 7, 1), ('p', 'p1', 3, 3), ('p', 'p6', 7, 2), ('n', 'n2', 3, 5)],[('p', 'p8', 2, 8), ('p', 'p7', 6, 8), ('p', 'p3', 7, 8), ('p', 'p1', 3, 8), ('p', 'p6', 7, 8), ('n', 'n2', 3, 5)]).
pos_ex([('p', 'p8', 8, 5), ('r', 'r2', 1, 8)],[('p', 'p8', 8, 8), ('r', 'r2', 1, 8)]).
pos_ex([('p', 'p8', 3, 2), ('n', 'n1', 3, 5)],[('p', 'p8', 3, 8), ('n', 'n1', 3, 5)]).
pos_ex([('p', 'p8', 7, 1), ('p', 'p3', 7, 4), ('b', 'b2', 5, 6), ('p', 'p4', 6, 7), ('k', 'k1', 2, 8), ('p', 'p7', 4, 6)],[('p', 'p8', 7, 8), ('p', 'p3', 7, 8), ('b', 'b2', 5, 6), ('p', 'p4', 6, 8), ('k', 'k1', 2, 8), ('p', 'p7', 4, 8)]).
pos_ex([('p', 'p8', 3, 7), ('p', 'p6', 6, 8), ('k', 'k1', 4, 6), ('r', 'r1', 2, 6), ('p', 'p5', 7, 1), ('q', 'q1', 3, 8), ('p', 'p7', 1, 8), ('n', 'n2', 8, 6), ('n', 'n1', 5, 2)],[('p', 'p8', 3, 8), ('p', 'p6', 6, 8), ('k', 'k1', 4, 6), ('r', 'r1', 2, 6), ('p', 'p5', 7, 8), ('q', 'q1', 3, 8), ('p', 'p7', 1, 8), ('n', 'n2', 8, 6), ('n', 'n1', 5, 2)]).
neg_ex([('p', 'p8', 3, 5)],[('p', 'p8', 3, 4)]).
neg_ex([('p', 'p8', 5, 6), ('b', 'b1', 7, 5), ('p', 'p3', 4, 3), ('p', 'p7', 8, 1), ('p', 'p2', 3, 5), ('r', 'r2', 6, 2), ('k', 'k1', 7, 2), ('b', 'b2', 3, 7), ('r', 'r1', 6, 5), ('n', 'n1', 2, 6), ('p', 'p4', 2, 4), ('p', 'p6', 4, 6), ('n', 'n2', 1, 6), ('q', 'q1', 6, 7)],[('p', 'p8', 5, 8), ('b', 'b1', 7, 5), ('p', 'p3', 4, 4), ('p', 'p7', 8, 8), ('p', 'p2', 3, 6), ('r', 'r2', 6, 2), ('k', 'k1', 7, 2), ('b', 'b2', 3, 7), ('r', 'r1', 6, 5), ('n', 'n1', 2, 6), ('p', 'p4', 2, 8), ('p', 'p6', 4, 8), ('n', 'n2', 1, 6), ('q', 'q1', 6, 7)]).
neg_ex([('p', 'p8', 1, 4)],[('p', 'p8', 1, 2)]).
neg_ex([('p', 'p8', 1, 4), ('n', 'n2', 8, 7), ('n', 'n1', 2, 6)],[('p', 'p8', 1, 6), ('n', 'n2', 8, 7), ('n', 'n1', 2, 6)]).
neg_ex([('p', 'p8', 7, 6), ('n', 'n1', 8, 4), ('p', 'p2', 1, 8), ('p', 'p5', 6, 5), ('r', 'r2', 2, 1), ('k', 'k1', 3, 8), ('p', 'p1', 4, 2), ('p', 'p4', 8, 8), ('n', 'n2', 1, 5), ('p', 'p3', 7, 2), ('p', 'p6', 4, 8), ('p', 'p7', 8, 1), ('r', 'r1', 8, 2)],[('p', 'p8', 7, 8), ('n', 'n1', 8, 4), ('p', 'p2', 1, 7), ('p', 'p5', 6, 8), ('r', 'r2', 2, 1), ('k', 'k1', 3, 8), ('p', 'p1', 4, 8), ('p', 'p4', 8, 8), ('n', 'n2', 1, 5), ('p', 'p3', 7, 8), ('p', 'p6', 4, 8), ('p', 'p7', 8, 8), ('r', 'r1', 8, 2)]).
neg_ex([('p', 'p8', 6, 4), ('p', 'p3', 7, 8), ('b', 'b1', 8, 1), ('r', 'r2', 6, 6), ('n', 'n1', 1, 5), ('r', 'r1', 6, 3)],[('p', 'p8', 6, 6), ('p', 'p3', 7, 8), ('b', 'b1', 8, 1), ('r', 'r2', 6, 6), ('n', 'n1', 1, 5), ('r', 'r1', 6, 3)]).
neg_ex([('p', 'p8', 4, 3), ('q', 'q1', 1, 4)],[('p', 'p8', 4, 4), ('q', 'q1', 1, 4)]).
neg_ex([('p', 'p8', 7, 4)],[('p', 'p8', 7, 5)]).