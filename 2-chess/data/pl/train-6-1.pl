pos_ex([('p', 'p8', 6, 3)],[('p', 'p8', 6, 8)]).
pos_ex([('p', 'p8', 8, 7), ('b', 'b2', 1, 2), ('k', 'k1', 3, 7), ('n', 'n1', 3, 8), ('p', 'p5', 8, 4)],[('p', 'p8', 8, 8), ('b', 'b2', 1, 2), ('k', 'k1', 3, 7), ('n', 'n1', 3, 8), ('p', 'p5', 8, 8)]).
pos_ex([('p', 'p8', 6, 6), ('n', 'n1', 4, 2), ('p', 'p2', 7, 7), ('p', 'p7', 3, 5), ('q', 'q1', 8, 4), ('p', 'p5', 3, 8), ('p', 'p1', 5, 3), ('p', 'p3', 2, 2), ('r', 'r2', 1, 1), ('p', 'p4', 6, 5)],[('p', 'p8', 6, 8), ('n', 'n1', 4, 2), ('p', 'p2', 7, 8), ('p', 'p7', 3, 8), ('q', 'q1', 8, 4), ('p', 'p5', 3, 8), ('p', 'p1', 5, 8), ('p', 'p3', 2, 8), ('r', 'r2', 1, 1), ('p', 'p4', 6, 8)]).
pos_ex([('p', 'p8', 1, 8), ('p', 'p2', 5, 1), ('b', 'b2', 2, 1), ('p', 'p5', 6, 3), ('r', 'r2', 4, 1), ('p', 'p4', 1, 7), ('n', 'n2', 5, 8), ('p', 'p3', 7, 8), ('p', 'p7', 8, 5), ('p', 'p6', 3, 8), ('n', 'n1', 8, 2), ('q', 'q1', 1, 2)],[('p', 'p8', 1, 8), ('p', 'p2', 5, 8), ('b', 'b2', 2, 1), ('p', 'p5', 6, 8), ('r', 'r2', 4, 1), ('p', 'p4', 1, 8), ('n', 'n2', 5, 8), ('p', 'p3', 7, 8), ('p', 'p7', 8, 8), ('p', 'p6', 3, 8), ('n', 'n1', 8, 2), ('q', 'q1', 1, 2)]).
pos_ex([('p', 'p8', 6, 1)],[('p', 'p8', 6, 8)]).
pos_ex([('p', 'p8', 3, 8), ('p', 'p2', 4, 8), ('p', 'p7', 4, 3), ('p', 'p6', 2, 7)],[('p', 'p8', 3, 8), ('p', 'p2', 4, 8), ('p', 'p7', 4, 8), ('p', 'p6', 2, 8)]).
neg_ex([('p', 'p8', 6, 6), ('q', 'q1', 1, 4), ('p', 'p3', 5, 6), ('r', 'r2', 8, 1), ('p', 'p7', 4, 6), ('r', 'r1', 6, 3), ('k', 'k1', 5, 3), ('p', 'p2', 6, 8)],[('p', 'p8', 6, 2), ('q', 'q1', 1, 4), ('p', 'p3', 5, 5), ('r', 'r2', 8, 1), ('p', 'p7', 4, 1), ('r', 'r1', 6, 3), ('k', 'k1', 5, 3), ('p', 'p2', 6, 8)]).
neg_ex([('p', 'p8', 3, 5), ('p', 'p7', 7, 7), ('p', 'p4', 2, 3), ('n', 'n1', 5, 7), ('k', 'k1', 6, 1), ('n', 'n2', 8, 7), ('r', 'r2', 3, 8), ('b', 'b2', 1, 3), ('p', 'p6', 8, 8), ('q', 'q1', 6, 6), ('r', 'r1', 2, 6), ('p', 'p3', 5, 5), ('p', 'p2', 6, 8), ('b', 'b1', 5, 2), ('p', 'p1', 8, 1)],[('p', 'p8', 3, 6), ('p', 'p7', 7, 8), ('p', 'p4', 2, 2), ('n', 'n1', 5, 7), ('k', 'k1', 6, 1), ('n', 'n2', 8, 7), ('r', 'r2', 3, 8), ('b', 'b2', 1, 3), ('p', 'p6', 8, 8), ('q', 'q1', 6, 6), ('r', 'r1', 2, 6), ('p', 'p3', 5, 2), ('p', 'p2', 6, 5), ('b', 'b1', 5, 2), ('p', 'p1', 8, 5)]).
neg_ex([('p', 'p8', 3, 6), ('p', 'p1', 3, 3), ('p', 'p5', 4, 4), ('k', 'k1', 6, 7), ('p', 'p7', 6, 1), ('r', 'r1', 5, 3), ('n', 'n1', 6, 5), ('p', 'p4', 1, 6), ('p', 'p2', 6, 8), ('r', 'r2', 1, 1)],[('p', 'p8', 3, 7), ('p', 'p1', 3, 6), ('p', 'p5', 4, 7), ('k', 'k1', 6, 7), ('p', 'p7', 6, 8), ('r', 'r1', 5, 3), ('n', 'n1', 6, 5), ('p', 'p4', 1, 4), ('p', 'p2', 6, 8), ('r', 'r2', 1, 1)]).
neg_ex([('p', 'p8', 3, 7), ('p', 'p3', 3, 8), ('b', 'b1', 5, 8), ('p', 'p4', 3, 2), ('p', 'p5', 1, 3), ('k', 'k1', 2, 7), ('p', 'p7', 5, 6), ('p', 'p2', 5, 5), ('p', 'p6', 4, 3), ('p', 'p1', 1, 7), ('n', 'n1', 4, 4), ('r', 'r1', 7, 2)],[('p', 'p8', 3, 8), ('p', 'p3', 3, 8), ('b', 'b1', 5, 8), ('p', 'p4', 3, 8), ('p', 'p5', 1, 8), ('k', 'k1', 2, 7), ('p', 'p7', 5, 4), ('p', 'p2', 5, 8), ('p', 'p6', 4, 4), ('p', 'p1', 1, 8), ('n', 'n1', 4, 4), ('r', 'r1', 7, 2)]).
neg_ex([('p', 'p8', 1, 2), ('p', 'p7', 8, 6), ('q', 'q1', 5, 4), ('p', 'p1', 6, 3), ('n', 'n1', 7, 7), ('p', 'p5', 2, 6), ('p', 'p4', 2, 7), ('k', 'k1', 2, 2), ('p', 'p6', 6, 2), ('p', 'p2', 4, 3)],[('p', 'p8', 1, 7), ('p', 'p7', 8, 8), ('q', 'q1', 5, 4), ('p', 'p1', 6, 8), ('n', 'n1', 7, 7), ('p', 'p5', 2, 8), ('p', 'p4', 2, 6), ('k', 'k1', 2, 2), ('p', 'p6', 6, 8), ('p', 'p2', 4, 7)]).
neg_ex([('p', 'p8', 6, 4), ('p', 'p7', 6, 2), ('n', 'n1', 6, 5), ('k', 'k1', 3, 6), ('r', 'r2', 8, 5), ('p', 'p5', 7, 1), ('p', 'p3', 1, 3), ('b', 'b2', 1, 7), ('n', 'n2', 4, 6), ('p', 'p1', 4, 5), ('b', 'b1', 4, 8), ('q', 'q1', 6, 3), ('p', 'p6', 2, 1), ('p', 'p2', 7, 5), ('p', 'p4', 3, 2)],[('p', 'p8', 6, 2), ('p', 'p7', 6, 4), ('n', 'n1', 6, 5), ('k', 'k1', 3, 6), ('r', 'r2', 8, 5), ('p', 'p5', 7, 1), ('p', 'p3', 1, 5), ('b', 'b2', 1, 7), ('n', 'n2', 4, 6), ('p', 'p1', 4, 7), ('b', 'b1', 4, 8), ('q', 'q1', 6, 3), ('p', 'p6', 2, 5), ('p', 'p2', 7, 1), ('p', 'p4', 3, 7)]).