pos_ex(f,"[('p', 'p8', 4, 6)]","[('p', 'p8', 4, 8)]").
pos_ex(f,"[('p', 'p8', 5, 3), ('r', 'r2', 1, 2)]","[('p', 'p8', 5, 8), ('r', 'r2', 1, 2)]").
pos_ex(f,"[('p', 'p8', 3, 2), ('q', 'q1', 2, 5), ('b', 'b1', 2, 2), ('p', 'p7', 7, 1)]","[('p', 'p8', 3, 8), ('q', 'q1', 2, 5), ('b', 'b1', 2, 2), ('p', 'p7', 7, 8)]").
pos_ex(f,"[('p', 'p8', 1, 2)]","[('p', 'p8', 1, 8)]").
pos_ex(f,"[('p', 'p8', 1, 7), ('p', 'p2', 4, 3)]","[('p', 'p8', 1, 8), ('p', 'p2', 4, 8)]").
pos_ex(f,"[('p', 'p8', 5, 8), ('p', 'p4', 4, 4), ('b', 'b1', 7, 3)]","[('p', 'p8', 5, 8), ('p', 'p4', 4, 8), ('b', 'b1', 7, 3)]").
pos_ex(f,"[('p', 'p8', 6, 5), ('n', 'n2', 6, 8), ('r', 'r1', 1, 4)]","[('p', 'p8', 6, 8), ('n', 'n2', 6, 8), ('r', 'r1', 1, 4)]").
pos_ex(f,"[('p', 'p8', 2, 4), ('p', 'p2', 7, 8), ('k', 'k1', 7, 2), ('r', 'r1', 4, 8)]","[('p', 'p8', 2, 8), ('p', 'p2', 7, 8), ('k', 'k1', 7, 2), ('r', 'r1', 4, 8)]").
neg_ex(f,"[('p', 'p8', 7, 3)]","[('p', 'p8', 7, 6)]").
neg_ex(f,"[('p', 'p8', 5, 3), ('p', 'p5', 3, 7), ('p', 'p6', 7, 8), ('p', 'p7', 1, 5)]","[('p', 'p8', 5, 8), ('p', 'p5', 3, 4), ('p', 'p6', 7, 6), ('p', 'p7', 1, 8)]").
neg_ex(f,"[('p', 'p8', 8, 8), ('p', 'p5', 2, 4), ('p', 'p4', 8, 6)]","[('p', 'p8', 8, 1), ('p', 'p5', 2, 6), ('p', 'p4', 8, 5)]").
neg_ex(f,"[('p', 'p8', 2, 3)]","[('p', 'p8', 2, 2)]").
neg_ex(f,"[('p', 'p8', 7, 7), ('p', 'p3', 3, 5), ('b', 'b2', 2, 5), ('n', 'n2', 2, 8)]","[('p', 'p8', 7, 5), ('p', 'p3', 3, 4), ('b', 'b2', 2, 5), ('n', 'n2', 2, 8)]").
neg_ex(f,"[('p', 'p8', 6, 2)]","[('p', 'p8', 6, 6)]").
neg_ex(f,"[('p', 'p8', 4, 4)]","[('p', 'p8', 4, 5)]").
neg_ex(f,"[('p', 'p8', 3, 7), ('p', 'p6', 3, 2), ('p', 'p2', 6, 2)]","[('p', 'p8', 3, 3), ('p', 'p6', 3, 2), ('p', 'p2', 6, 6)]").
