pos_ex(f,"[('p', 'p8', 3, 7), ('r', 'r2', 5, 2), ('p', 'p7', 2, 4), ('n', 'n2', 4, 6)]","[('p', 'p8', 3, 8), ('r', 'r2', 5, 2), ('p', 'p7', 2, 8), ('n', 'n2', 4, 6)]").
pos_ex(f,"[('p', 'p8', 3, 4)]","[('p', 'p8', 3, 8)]").
pos_ex(f,"[('p', 'p8', 3, 8), ('q', 'q1', 1, 6), ('p', 'p6', 2, 4), ('n', 'n2', 8, 2)]","[('p', 'p8', 3, 8), ('q', 'q1', 1, 6), ('p', 'p6', 2, 8), ('n', 'n2', 8, 2)]").
neg_ex(f,"[('p', 'p8', 7, 2), ('p', 'p7', 6, 5)]","[('p', 'p8', 7, 4), ('p', 'p7', 6, 6)]").
neg_ex(f,"[('p', 'p8', 5, 4)]","[('p', 'p8', 5, 7)]").
neg_ex(f,"[('p', 'p8', 1, 7), ('n', 'n2', 4, 8)]","[('p', 'p8', 1, 7), ('n', 'n2', 4, 8)]").