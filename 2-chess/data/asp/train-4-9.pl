pos_ex(f,"[('p', 'p8', 7, 7), ('n', 'n2', 2, 5), ('p', 'p7', 8, 7), ('b', 'b1', 6, 2)]","[('p', 'p8', 7, 8), ('n', 'n2', 2, 5), ('p', 'p7', 8, 8), ('b', 'b1', 6, 2)]").
pos_ex(f,"[('p', 'p8', 2, 3)]","[('p', 'p8', 2, 8)]").
pos_ex(f,"[('p', 'p8', 8, 3), ('k', 'k1', 4, 7), ('b', 'b2', 7, 3), ('p', 'p3', 2, 3)]","[('p', 'p8', 8, 8), ('k', 'k1', 4, 7), ('b', 'b2', 7, 3), ('p', 'p3', 2, 8)]").
pos_ex(f,"[('p', 'p8', 2, 3), ('b', 'b2', 2, 4), ('p', 'p2', 8, 2), ('n', 'n2', 3, 3)]","[('p', 'p8', 2, 8), ('b', 'b2', 2, 4), ('p', 'p2', 8, 8), ('n', 'n2', 3, 3)]").
neg_ex(f,"[('p', 'p8', 6, 4), ('n', 'n2', 8, 5), ('n', 'n1', 6, 3), ('p', 'p5', 7, 5)]","[('p', 'p8', 6, 3), ('n', 'n2', 8, 5), ('n', 'n1', 6, 3), ('p', 'p5', 7, 4)]").
neg_ex(f,"[('p', 'p8', 2, 1), ('k', 'k1', 1, 1)]","[('p', 'p8', 2, 5), ('k', 'k1', 1, 1)]").
neg_ex(f,"[('p', 'p8', 8, 7), ('p', 'p3', 5, 8), ('r', 'r1', 8, 1)]","[('p', 'p8', 8, 4), ('p', 'p3', 5, 8), ('r', 'r1', 8, 1)]").
neg_ex(f,"[('p', 'p8', 3, 6), ('p', 'p1', 8, 7), ('b', 'b1', 6, 3)]","[('p', 'p8', 3, 1), ('p', 'p1', 8, 2), ('b', 'b1', 6, 3)]").