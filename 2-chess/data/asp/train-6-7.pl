pos_ex(f,"[('p', 'p8', 6, 7)]","[('p', 'p8', 6, 8)]").
pos_ex(f,"[('p', 'p8', 4, 6), ('k', 'k1', 5, 6), ('p', 'p6', 1, 7), ('p', 'p5', 1, 1)]","[('p', 'p8', 4, 8), ('k', 'k1', 5, 6), ('p', 'p6', 1, 8), ('p', 'p5', 1, 8)]").
pos_ex(f,"[('p', 'p8', 1, 2), ('b', 'b1', 7, 7)]","[('p', 'p8', 1, 8), ('b', 'b1', 7, 7)]").
pos_ex(f,"[('p', 'p8', 4, 3), ('p', 'p3', 1, 2)]","[('p', 'p8', 4, 8), ('p', 'p3', 1, 8)]").
pos_ex(f,"[('p', 'p8', 1, 8), ('n', 'n2', 2, 4), ('p', 'p6', 3, 8), ('k', 'k1', 5, 8)]","[('p', 'p8', 1, 8), ('n', 'n2', 2, 4), ('p', 'p6', 3, 8), ('k', 'k1', 5, 8)]").
pos_ex(f,"[('p', 'p8', 3, 3), ('q', 'q1', 1, 3), ('r', 'r2', 8, 7)]","[('p', 'p8', 3, 8), ('q', 'q1', 1, 3), ('r', 'r2', 8, 7)]").
neg_ex(f,"[('p', 'p8', 2, 5), ('q', 'q1', 8, 1), ('p', 'p1', 3, 4), ('p', 'p7', 8, 3)]","[('p', 'p8', 2, 8), ('q', 'q1', 8, 1), ('p', 'p1', 3, 6), ('p', 'p7', 8, 8)]").
neg_ex(f,"[('p', 'p8', 8, 1), ('p', 'p7', 5, 3), ('n', 'n1', 6, 2)]","[('p', 'p8', 8, 2), ('p', 'p7', 5, 8), ('n', 'n1', 6, 2)]").
neg_ex(f,"[('p', 'p8', 4, 7), ('b', 'b2', 6, 4)]","[('p', 'p8', 4, 3), ('b', 'b2', 6, 4)]").
neg_ex(f,"[('p', 'p8', 6, 5), ('n', 'n2', 8, 2)]","[('p', 'p8', 6, 1), ('n', 'n2', 8, 2)]").
neg_ex(f,"[('p', 'p8', 2, 7), ('p', 'p6', 6, 3), ('n', 'n2', 5, 2)]","[('p', 'p8', 2, 8), ('p', 'p6', 6, 4), ('n', 'n2', 5, 2)]").
neg_ex(f,"[('p', 'p8', 8, 6), ('k', 'k1', 1, 8)]","[('p', 'p8', 8, 3), ('k', 'k1', 1, 8)]").
