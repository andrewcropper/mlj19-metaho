pos_ex([('p', 'p8', 6, 5), ('b', 'b2', 4, 6), ('p', 'p4', 1, 3)],[('p', 'p8', 6, 8), ('b', 'b2', 4, 6), ('p', 'p4', 1, 8)]).
pos_ex([('p', 'p8', 2, 7), ('p', 'p7', 7, 1), ('b', 'b2', 8, 5), ('p', 'p1', 3, 5), ('n', 'n2', 8, 6), ('r', 'r2', 7, 3), ('n', 'n1', 5, 4), ('b', 'b1', 5, 5), ('p', 'p3', 3, 6), ('q', 'q1', 8, 8)],[('p', 'p8', 2, 8), ('p', 'p7', 7, 8), ('b', 'b2', 8, 5), ('p', 'p1', 3, 8), ('n', 'n2', 8, 6), ('r', 'r2', 7, 3), ('n', 'n1', 5, 4), ('b', 'b1', 5, 5), ('p', 'p3', 3, 8), ('q', 'q1', 8, 8)]).
pos_ex([('p', 'p8', 6, 6), ('p', 'p4', 2, 7), ('p', 'p2', 5, 2)],[('p', 'p8', 6, 8), ('p', 'p4', 2, 8), ('p', 'p2', 5, 8)]).
pos_ex([('p', 'p8', 7, 5), ('b', 'b2', 8, 5), ('r', 'r2', 7, 4), ('n', 'n1', 6, 3), ('p', 'p2', 4, 7), ('r', 'r1', 2, 7), ('q', 'q1', 6, 8), ('p', 'p7', 6, 7), ('n', 'n2', 3, 4), ('b', 'b1', 5, 8), ('k', 'k1', 8, 7), ('p', 'p1', 8, 4), ('p', 'p3', 1, 4), ('p', 'p6', 4, 5)],[('p', 'p8', 7, 8), ('b', 'b2', 8, 5), ('r', 'r2', 7, 4), ('n', 'n1', 6, 3), ('p', 'p2', 4, 8), ('r', 'r1', 2, 7), ('q', 'q1', 6, 8), ('p', 'p7', 6, 8), ('n', 'n2', 3, 4), ('b', 'b1', 5, 8), ('k', 'k1', 8, 7), ('p', 'p1', 8, 8), ('p', 'p3', 1, 8), ('p', 'p6', 4, 8)]).
pos_ex([('p', 'p8', 7, 5), ('p', 'p3', 5, 1)],[('p', 'p8', 7, 8), ('p', 'p3', 5, 8)]).
pos_ex([('p', 'p8', 1, 6), ('q', 'q1', 6, 8), ('n', 'n1', 2, 4), ('p', 'p2', 2, 2), ('p', 'p7', 8, 8), ('k', 'k1', 7, 1), ('b', 'b2', 1, 7), ('p', 'p3', 8, 2), ('p', 'p6', 3, 1), ('r', 'r1', 5, 8), ('b', 'b1', 3, 5), ('p', 'p1', 6, 6), ('n', 'n2', 6, 4), ('p', 'p5', 7, 5), ('r', 'r2', 5, 7)],[('p', 'p8', 1, 8), ('q', 'q1', 6, 8), ('n', 'n1', 2, 4), ('p', 'p2', 2, 8), ('p', 'p7', 8, 8), ('k', 'k1', 7, 1), ('b', 'b2', 1, 7), ('p', 'p3', 8, 8), ('p', 'p6', 3, 8), ('r', 'r1', 5, 8), ('b', 'b1', 3, 5), ('p', 'p1', 6, 8), ('n', 'n2', 6, 4), ('p', 'p5', 7, 8), ('r', 'r2', 5, 7)]).
neg_ex([('p', 'p8', 6, 2), ('r', 'r2', 7, 2), ('b', 'b1', 7, 3), ('p', 'p1', 1, 2), ('n', 'n1', 3, 7), ('r', 'r1', 5, 4)],[('p', 'p8', 6, 8), ('r', 'r2', 7, 2), ('b', 'b1', 7, 3), ('p', 'p1', 1, 7), ('n', 'n1', 3, 7), ('r', 'r1', 5, 4)]).
neg_ex([('p', 'p8', 3, 6), ('p', 'p6', 2, 8), ('p', 'p3', 6, 4), ('n', 'n1', 7, 8), ('r', 'r1', 6, 3)],[('p', 'p8', 3, 8), ('p', 'p6', 2, 8), ('p', 'p3', 6, 7), ('n', 'n1', 7, 8), ('r', 'r1', 6, 3)]).
neg_ex([('p', 'p8', 1, 8), ('p', 'p2', 1, 7), ('r', 'r1', 5, 3)],[('p', 'p8', 1, 3), ('p', 'p2', 1, 2), ('r', 'r1', 5, 3)]).
neg_ex([('p', 'p8', 1, 5), ('p', 'p4', 7, 4), ('q', 'q1', 6, 4), ('k', 'k1', 5, 2), ('p', 'p3', 8, 1), ('p', 'p5', 5, 4), ('n', 'n2', 1, 7), ('p', 'p7', 5, 8), ('r', 'r1', 7, 1), ('p', 'p1', 3, 8), ('b', 'b2', 3, 6), ('b', 'b1', 8, 5), ('p', 'p6', 5, 1), ('n', 'n1', 8, 4), ('p', 'p2', 1, 2)],[('p', 'p8', 1, 8), ('p', 'p4', 7, 8), ('q', 'q1', 6, 4), ('k', 'k1', 5, 2), ('p', 'p3', 8, 8), ('p', 'p5', 5, 8), ('n', 'n2', 1, 7), ('p', 'p7', 5, 8), ('r', 'r1', 7, 1), ('p', 'p1', 3, 5), ('b', 'b2', 3, 6), ('b', 'b1', 8, 5), ('p', 'p6', 5, 8), ('n', 'n1', 8, 4), ('p', 'p2', 1, 8)]).
neg_ex([('p', 'p8', 6, 8), ('p', 'p3', 2, 1), ('p', 'p5', 1, 1), ('b', 'b2', 2, 7), ('p', 'p6', 3, 5), ('p', 'p1', 3, 7), ('n', 'n1', 5, 6), ('p', 'p7', 6, 1), ('k', 'k1', 7, 6), ('q', 'q1', 5, 5), ('b', 'b1', 1, 8), ('r', 'r2', 5, 4), ('p', 'p2', 4, 8), ('n', 'n2', 1, 4), ('p', 'p4', 8, 7)],[('p', 'p8', 6, 8), ('p', 'p3', 2, 6), ('p', 'p5', 1, 8), ('b', 'b2', 2, 7), ('p', 'p6', 3, 3), ('p', 'p1', 3, 8), ('n', 'n1', 5, 6), ('p', 'p7', 6, 5), ('k', 'k1', 7, 6), ('q', 'q1', 5, 5), ('b', 'b1', 1, 8), ('r', 'r2', 5, 4), ('p', 'p2', 4, 8), ('n', 'n2', 1, 4), ('p', 'p4', 8, 8)]).
neg_ex([('p', 'p8', 2, 4), ('p', 'p6', 1, 2)],[('p', 'p8', 2, 5), ('p', 'p6', 1, 5)]).
