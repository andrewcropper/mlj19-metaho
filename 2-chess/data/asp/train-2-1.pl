pos_ex(f,"[('p', 'p8', 2, 8), ('k', 'k1', 8, 8)]","[('p', 'p8', 2, 8), ('k', 'k1', 8, 8)]").
pos_ex(f,"[('p', 'p8', 1, 8), ('p', 'p1', 8, 3), ('p', 'p3', 8, 1), ('p', 'p7', 2, 3)]","[('p', 'p8', 1, 8), ('p', 'p1', 8, 8), ('p', 'p3', 8, 8), ('p', 'p7', 2, 8)]").
neg_ex(f,"[('p', 'p8', 4, 1), ('p', 'p7', 7, 2), ('n', 'n1', 1, 6)]","[('p', 'p8', 4, 7), ('p', 'p7', 7, 3), ('n', 'n1', 1, 6)]").
neg_ex(f,"[('p', 'p8', 6, 2), ('r', 'r2', 6, 8), ('p', 'p4', 8, 6)]","[('p', 'p8', 6, 1), ('r', 'r2', 6, 8), ('p', 'p4', 8, 6)]").
