pos_ex(f,"[('p', 'p8', 4, 8), ('n', 'n2', 6, 8), ('n', 'n1', 8, 5), ('q', 'q1', 5, 4)]","[('p', 'p8', 4, 8), ('n', 'n2', 6, 8), ('n', 'n1', 8, 5), ('q', 'q1', 5, 4)]").
pos_ex(f,"[('p', 'p8', 4, 2), ('p', 'p3', 8, 1), ('q', 'q1', 5, 4), ('p', 'p4', 4, 6)]","[('p', 'p8', 4, 8), ('p', 'p3', 8, 8), ('q', 'q1', 5, 4), ('p', 'p4', 4, 8)]").
pos_ex(f,"[('p', 'p8', 8, 5), ('p', 'p1', 6, 8)]","[('p', 'p8', 8, 8), ('p', 'p1', 6, 8)]").
neg_ex(f,"[('p', 'p8', 8, 6), ('p', 'p6', 8, 3), ('q', 'q1', 8, 2), ('p', 'p5', 7, 8)]","[('p', 'p8', 8, 7), ('p', 'p6', 8, 8), ('q', 'q1', 8, 2), ('p', 'p5', 7, 4)]").
neg_ex(f,"[('p', 'p8', 3, 7), ('p', 'p6', 8, 3), ('k', 'k1', 6, 8)]","[('p', 'p8', 3, 5), ('p', 'p6', 8, 8), ('k', 'k1', 6, 8)]").
neg_ex(f,"[('p', 'p8', 3, 7), ('n', 'n2', 2, 7)]","[('p', 'p8', 3, 5), ('n', 'n2', 2, 7)]").
