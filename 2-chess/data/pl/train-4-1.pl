pos_ex([('p', 'p8', 4, 2), ('r', 'r1', 5, 4), ('p', 'p4', 8, 5), ('p', 'p7', 5, 8), ('b', 'b2', 1, 4), ('r', 'r2', 2, 5), ('n', 'n1', 2, 1), ('p', 'p3', 4, 8), ('q', 'q1', 6, 5), ('p', 'p1', 7, 5), ('p', 'p6', 8, 1), ('b', 'b1', 7, 7), ('n', 'n2', 2, 8)],[('p', 'p8', 4, 8), ('r', 'r1', 5, 4), ('p', 'p4', 8, 8), ('p', 'p7', 5, 8), ('b', 'b2', 1, 4), ('r', 'r2', 2, 5), ('n', 'n1', 2, 1), ('p', 'p3', 4, 8), ('q', 'q1', 6, 5), ('p', 'p1', 7, 8), ('p', 'p6', 8, 8), ('b', 'b1', 7, 7), ('n', 'n2', 2, 8)]).
pos_ex([('p', 'p8', 4, 7), ('r', 'r1', 1, 5), ('p', 'p2', 4, 1), ('n', 'n1', 4, 6), ('p', 'p4', 1, 4)],[('p', 'p8', 4, 8), ('r', 'r1', 1, 5), ('p', 'p2', 4, 8), ('n', 'n1', 4, 6), ('p', 'p4', 1, 8)]).
pos_ex([('p', 'p8', 1, 6), ('p', 'p1', 3, 7), ('p', 'p7', 4, 4), ('p', 'p4', 6, 6), ('b', 'b1', 8, 3), ('p', 'p5', 4, 3), ('n', 'n2', 8, 2), ('p', 'p3', 8, 1), ('p', 'p2', 1, 2)],[('p', 'p8', 1, 8), ('p', 'p1', 3, 8), ('p', 'p7', 4, 8), ('p', 'p4', 6, 8), ('b', 'b1', 8, 3), ('p', 'p5', 4, 8), ('n', 'n2', 8, 2), ('p', 'p3', 8, 8), ('p', 'p2', 1, 8)]).
pos_ex([('p', 'p8', 5, 2), ('p', 'p5', 4, 1), ('n', 'n1', 3, 8), ('p', 'p4', 7, 1), ('r', 'r1', 2, 3), ('q', 'q1', 7, 4), ('b', 'b2', 4, 7), ('r', 'r2', 7, 3), ('p', 'p1', 8, 4), ('p', 'p3', 2, 8), ('p', 'p2', 6, 3), ('p', 'p6', 8, 6), ('k', 'k1', 5, 4), ('n', 'n2', 1, 3), ('p', 'p7', 2, 6)],[('p', 'p8', 5, 8), ('p', 'p5', 4, 8), ('n', 'n1', 3, 8), ('p', 'p4', 7, 8), ('r', 'r1', 2, 3), ('q', 'q1', 7, 4), ('b', 'b2', 4, 7), ('r', 'r2', 7, 3), ('p', 'p1', 8, 8), ('p', 'p3', 2, 8), ('p', 'p2', 6, 8), ('p', 'p6', 8, 8), ('k', 'k1', 5, 4), ('n', 'n2', 1, 3), ('p', 'p7', 2, 8)]).
neg_ex([('p', 'p8', 8, 6)],[('p', 'p8', 8, 4)]).
neg_ex([('p', 'p8', 5, 3), ('b', 'b2', 6, 8), ('p', 'p2', 3, 6), ('k', 'k1', 5, 2), ('r', 'r1', 2, 1), ('p', 'p5', 5, 6), ('p', 'p6', 6, 3), ('r', 'r2', 4, 2)],[('p', 'p8', 5, 8), ('b', 'b2', 6, 8), ('p', 'p2', 3, 8), ('k', 'k1', 5, 2), ('r', 'r1', 2, 1), ('p', 'p5', 5, 8), ('p', 'p6', 6, 5), ('r', 'r2', 4, 2)]).
neg_ex([('p', 'p8', 2, 6)],[('p', 'p8', 2, 6)]).
neg_ex([('p', 'p8', 7, 5)],[('p', 'p8', 7, 7)]).