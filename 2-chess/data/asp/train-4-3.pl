pos_ex(f,"[('p', 'p8', 2, 7), ('r', 'r2', 6, 1), ('r', 'r1', 5, 4)]","[('p', 'p8', 2, 8), ('r', 'r2', 6, 1), ('r', 'r1', 5, 4)]").
pos_ex(f,"[('p', 'p8', 5, 2), ('b', 'b2', 4, 1), ('n', 'n1', 7, 1)]","[('p', 'p8', 5, 8), ('b', 'b2', 4, 1), ('n', 'n1', 7, 1)]").
pos_ex(f,"[('p', 'p8', 1, 6), ('p', 'p5', 3, 2), ('p', 'p4', 4, 8), ('n', 'n2', 6, 3)]","[('p', 'p8', 1, 8), ('p', 'p5', 3, 8), ('p', 'p4', 4, 8), ('n', 'n2', 6, 3)]").
pos_ex(f,"[('p', 'p8', 4, 2), ('p', 'p6', 2, 2), ('p', 'p2', 7, 3), ('p', 'p1', 5, 3)]","[('p', 'p8', 4, 8), ('p', 'p6', 2, 8), ('p', 'p2', 7, 8), ('p', 'p1', 5, 8)]").
neg_ex(f,"[('p', 'p8', 8, 8), ('b', 'b2', 2, 3), ('p', 'p4', 4, 4)]","[('p', 'p8', 8, 3), ('b', 'b2', 2, 3), ('p', 'p4', 4, 4)]").
neg_ex(f,"[('p', 'p8', 8, 5), ('p', 'p2', 8, 6), ('n', 'n1', 4, 4)]","[('p', 'p8', 8, 8), ('p', 'p2', 8, 5), ('n', 'n1', 4, 4)]").
neg_ex(f,"[('p', 'p8', 5, 6)]","[('p', 'p8', 5, 3)]").
neg_ex(f,"[('p', 'p8', 2, 1), ('p', 'p6', 1, 3), ('k', 'k1', 1, 4)]","[('p', 'p8', 2, 6), ('p', 'p6', 1, 7), ('k', 'k1', 1, 4)]").
