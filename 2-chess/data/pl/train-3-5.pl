pos_ex([('p', 'p8', 5, 7), ('p', 'p6', 2, 4), ('p', 'p3', 5, 2), ('q', 'q1', 4, 7), ('p', 'p4', 8, 8), ('b', 'b1', 3, 5), ('r', 'r1', 2, 1), ('p', 'p5', 4, 6), ('p', 'p7', 4, 4), ('p', 'p2', 6, 3), ('b', 'b2', 3, 2), ('r', 'r2', 5, 3), ('n', 'n1', 7, 6), ('k', 'k1', 8, 4), ('p', 'p1', 8, 6)],[('p', 'p8', 5, 8), ('p', 'p6', 2, 8), ('p', 'p3', 5, 8), ('q', 'q1', 4, 7), ('p', 'p4', 8, 8), ('b', 'b1', 3, 5), ('r', 'r1', 2, 1), ('p', 'p5', 4, 8), ('p', 'p7', 4, 8), ('p', 'p2', 6, 8), ('b', 'b2', 3, 2), ('r', 'r2', 5, 3), ('n', 'n1', 7, 6), ('k', 'k1', 8, 4), ('p', 'p1', 8, 8)]).
pos_ex([('p', 'p8', 4, 8)],[('p', 'p8', 4, 8)]).
pos_ex([('p', 'p8', 3, 8), ('p', 'p2', 3, 7), ('n', 'n2', 6, 2), ('b', 'b2', 4, 7), ('p', 'p5', 3, 1), ('p', 'p3', 7, 7), ('q', 'q1', 8, 4), ('p', 'p4', 7, 4), ('r', 'r2', 5, 3), ('p', 'p6', 1, 3)],[('p', 'p8', 3, 8), ('p', 'p2', 3, 8), ('n', 'n2', 6, 2), ('b', 'b2', 4, 7), ('p', 'p5', 3, 8), ('p', 'p3', 7, 8), ('q', 'q1', 8, 4), ('p', 'p4', 7, 8), ('r', 'r2', 5, 3), ('p', 'p6', 1, 8)]).
neg_ex([('p', 'p8', 4, 8), ('n', 'n2', 8, 3), ('q', 'q1', 1, 1), ('n', 'n1', 8, 4), ('b', 'b1', 5, 5), ('p', 'p2', 1, 6), ('r', 'r1', 3, 4), ('k', 'k1', 5, 6), ('p', 'p7', 1, 7), ('p', 'p3', 2, 3)],[('p', 'p8', 4, 6), ('n', 'n2', 8, 3), ('q', 'q1', 1, 1), ('n', 'n1', 8, 4), ('b', 'b1', 5, 5), ('p', 'p2', 1, 4), ('r', 'r1', 3, 4), ('k', 'k1', 5, 6), ('p', 'p7', 1, 2), ('p', 'p3', 2, 2)]).
neg_ex([('p', 'p8', 8, 7), ('b', 'b1', 5, 2)],[('p', 'p8', 8, 5), ('b', 'b1', 5, 2)]).
neg_ex([('p', 'p8', 8, 3)],[('p', 'p8', 8, 6)]).