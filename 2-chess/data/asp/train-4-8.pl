pos_ex(f,"[('p', 'p8', 8, 5)]","[('p', 'p8', 8, 8)]").
pos_ex(f,"[('p', 'p8', 1, 6), ('r', 'r2', 3, 3), ('p', 'p1', 8, 7), ('k', 'k1', 1, 1)]","[('p', 'p8', 1, 8), ('r', 'r2', 3, 3), ('p', 'p1', 8, 8), ('k', 'k1', 1, 1)]").
pos_ex(f,"[('p', 'p8', 1, 1), ('p', 'p6', 7, 5), ('p', 'p5', 4, 2)]","[('p', 'p8', 1, 8), ('p', 'p6', 7, 8), ('p', 'p5', 4, 8)]").
pos_ex(f,"[('p', 'p8', 5, 6), ('p', 'p1', 6, 4), ('k', 'k1', 3, 6), ('p', 'p7', 6, 8)]","[('p', 'p8', 5, 8), ('p', 'p1', 6, 8), ('k', 'k1', 3, 6), ('p', 'p7', 6, 8)]").
neg_ex(f,"[('p', 'p8', 1, 8), ('p', 'p2', 5, 4)]","[('p', 'p8', 1, 8), ('p', 'p2', 5, 4)]").
neg_ex(f,"[('p', 'p8', 4, 7), ('p', 'p4', 1, 3), ('p', 'p3', 7, 1)]","[('p', 'p8', 4, 3), ('p', 'p4', 1, 7), ('p', 'p3', 7, 3)]").
neg_ex(f,"[('p', 'p8', 4, 5), ('n', 'n2', 3, 2)]","[('p', 'p8', 4, 2), ('n', 'n2', 3, 2)]").
neg_ex(f,"[('p', 'p8', 6, 5), ('p', 'p2', 7, 6)]","[('p', 'p8', 6, 8), ('p', 'p2', 7, 4)]").
