pos_ex(f,"[('p', 'p8', 8, 1), ('k', 'k1', 4, 1)]","[('p', 'p8', 8, 8), ('k', 'k1', 4, 1)]").
pos_ex(f,"[('p', 'p8', 2, 1), ('p', 'p2', 1, 6), ('q', 'q1', 5, 5), ('p', 'p6', 1, 7)]","[('p', 'p8', 2, 8), ('p', 'p2', 1, 8), ('q', 'q1', 5, 5), ('p', 'p6', 1, 8)]").
pos_ex(f,"[('p', 'p8', 5, 2), ('k', 'k1', 6, 7), ('p', 'p3', 7, 2)]","[('p', 'p8', 5, 8), ('k', 'k1', 6, 7), ('p', 'p3', 7, 8)]").
pos_ex(f,"[('p', 'p8', 2, 3)]","[('p', 'p8', 2, 8)]").
pos_ex(f,"[('p', 'p8', 3, 1), ('p', 'p6', 8, 8), ('r', 'r1', 6, 8), ('n', 'n1', 6, 3)]","[('p', 'p8', 3, 8), ('p', 'p6', 8, 8), ('r', 'r1', 6, 8), ('n', 'n1', 6, 3)]").
pos_ex(f,"[('p', 'p8', 4, 4), ('p', 'p6', 2, 6), ('p', 'p2', 2, 8)]","[('p', 'p8', 4, 8), ('p', 'p6', 2, 8), ('p', 'p2', 2, 8)]").
neg_ex(f,"[('p', 'p8', 4, 3)]","[('p', 'p8', 4, 1)]").
neg_ex(f,"[('p', 'p8', 1, 6), ('q', 'q1', 7, 2)]","[('p', 'p8', 1, 4), ('q', 'q1', 7, 2)]").
neg_ex(f,"[('p', 'p8', 3, 5)]","[('p', 'p8', 3, 4)]").
neg_ex(f,"[('p', 'p8', 6, 7), ('p', 'p5', 2, 1)]","[('p', 'p8', 6, 4), ('p', 'p5', 2, 8)]").
neg_ex(f,"[('p', 'p8', 2, 8)]","[('p', 'p8', 2, 7)]").
neg_ex(f,"[('p', 'p8', 8, 8)]","[('p', 'p8', 8, 3)]").
