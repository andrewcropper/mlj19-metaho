pos_ex(f,"[('p', 'p8', 2, 3), ('p', 'p6', 8, 1), ('p', 'p2', 3, 6)]","[('p', 'p8', 2, 8), ('p', 'p6', 8, 8), ('p', 'p2', 3, 8)]").
pos_ex(f,"[('p', 'p8', 5, 2)]","[('p', 'p8', 5, 8)]").
pos_ex(f,"[('p', 'p8', 5, 8)]","[('p', 'p8', 5, 8)]").
pos_ex(f,"[('p', 'p8', 6, 3)]","[('p', 'p8', 6, 8)]").
pos_ex(f,"[('p', 'p8', 2, 7), ('b', 'b1', 5, 7), ('p', 'p5', 4, 2)]","[('p', 'p8', 2, 8), ('b', 'b1', 5, 7), ('p', 'p5', 4, 8)]").
pos_ex(f,"[('p', 'p8', 7, 1), ('b', 'b1', 1, 2), ('b', 'b2', 8, 7)]","[('p', 'p8', 7, 8), ('b', 'b1', 1, 2), ('b', 'b2', 8, 7)]").
pos_ex(f,"[('p', 'p8', 4, 2), ('n', 'n2', 3, 2)]","[('p', 'p8', 4, 8), ('n', 'n2', 3, 2)]").
pos_ex(f,"[('p', 'p8', 3, 6)]","[('p', 'p8', 3, 8)]").
neg_ex(f,"[('p', 'p8', 6, 3)]","[('p', 'p8', 6, 5)]").
neg_ex(f,"[('p', 'p8', 8, 4)]","[('p', 'p8', 8, 2)]").
neg_ex(f,"[('p', 'p8', 7, 8), ('b', 'b2', 5, 4)]","[('p', 'p8', 7, 6), ('b', 'b2', 5, 4)]").
neg_ex(f,"[('p', 'p8', 7, 1), ('r', 'r1', 1, 8), ('n', 'n2', 3, 7)]","[('p', 'p8', 7, 6), ('r', 'r1', 1, 8), ('n', 'n2', 3, 7)]").
neg_ex(f,"[('p', 'p8', 2, 7), ('r', 'r2', 7, 3)]","[('p', 'p8', 2, 5), ('r', 'r2', 7, 3)]").
neg_ex(f,"[('p', 'p8', 1, 8)]","[('p', 'p8', 1, 7)]").
neg_ex(f,"[('p', 'p8', 4, 2), ('p', 'p5', 1, 5), ('p', 'p4', 2, 3), ('n', 'n2', 7, 6)]","[('p', 'p8', 4, 8), ('p', 'p5', 1, 5), ('p', 'p4', 2, 3), ('n', 'n2', 7, 6)]").
neg_ex(f,"[('p', 'p8', 5, 1), ('r', 'r1', 4, 8), ('r', 'r2', 2, 8)]","[('p', 'p8', 5, 7), ('r', 'r1', 4, 8), ('r', 'r2', 2, 8)]").
