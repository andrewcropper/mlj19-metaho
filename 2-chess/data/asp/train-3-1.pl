pos_ex(f,"[('p', 'p8', 7, 4), ('p', 'p3', 1, 2), ('r', 'r1', 3, 4), ('b', 'b1', 8, 5)]","[('p', 'p8', 7, 8), ('p', 'p3', 1, 8), ('r', 'r1', 3, 4), ('b', 'b1', 8, 5)]").
pos_ex(f,"[('p', 'p8', 3, 4)]","[('p', 'p8', 3, 8)]").
pos_ex(f,"[('p', 'p8', 1, 1), ('p', 'p6', 8, 1), ('p', 'p7', 2, 4), ('r', 'r1', 5, 2)]","[('p', 'p8', 1, 8), ('p', 'p6', 8, 8), ('p', 'p7', 2, 8), ('r', 'r1', 5, 2)]").
neg_ex(f,"[('p', 'p8', 3, 4), ('n', 'n2', 8, 8), ('p', 'p1', 3, 6), ('b', 'b1', 3, 7)]","[('p', 'p8', 3, 5), ('n', 'n2', 8, 8), ('p', 'p1', 3, 8), ('b', 'b1', 3, 7)]").
neg_ex(f,"[('p', 'p8', 5, 3), ('r', 'r2', 8, 3), ('n', 'n1', 7, 1), ('p', 'p3', 5, 8)]","[('p', 'p8', 5, 6), ('r', 'r2', 8, 3), ('n', 'n1', 7, 1), ('p', 'p3', 5, 8)]").
neg_ex(f,"[('p', 'p8', 2, 4), ('p', 'p5', 1, 7)]","[('p', 'p8', 2, 8), ('p', 'p5', 1, 2)]").
