pos_ex(f,"[('p', 'p8', 7, 5)]","[('p', 'p8', 7, 8)]").
pos_ex(f,"[('p', 'p8', 3, 2), ('b', 'b2', 1, 4), ('p', 'p6', 6, 5), ('q', 'q1', 7, 8)]","[('p', 'p8', 3, 8), ('b', 'b2', 1, 4), ('p', 'p6', 6, 8), ('q', 'q1', 7, 8)]").
pos_ex(f,"[('p', 'p8', 5, 4), ('r', 'r1', 4, 3)]","[('p', 'p8', 5, 8), ('r', 'r1', 4, 3)]").
pos_ex(f,"[('p', 'p8', 4, 2), ('p', 'p4', 3, 2)]","[('p', 'p8', 4, 8), ('p', 'p4', 3, 8)]").
pos_ex(f,"[('p', 'p8', 7, 2), ('n', 'n1', 4, 7), ('n', 'n2', 5, 8)]","[('p', 'p8', 7, 8), ('n', 'n1', 4, 7), ('n', 'n2', 5, 8)]").
pos_ex(f,"[('p', 'p8', 8, 6)]","[('p', 'p8', 8, 8)]").
pos_ex(f,"[('p', 'p8', 8, 7)]","[('p', 'p8', 8, 8)]").
pos_ex(f,"[('p', 'p8', 8, 5), ('r', 'r1', 4, 6), ('b', 'b1', 7, 3)]","[('p', 'p8', 8, 8), ('r', 'r1', 4, 6), ('b', 'b1', 7, 3)]").
pos_ex(f,"[('p', 'p8', 6, 8), ('r', 'r2', 2, 7)]","[('p', 'p8', 6, 8), ('r', 'r2', 2, 7)]").
pos_ex(f,"[('p', 'p8', 8, 3), ('p', 'p7', 8, 7)]","[('p', 'p8', 8, 8), ('p', 'p7', 8, 8)]").
neg_ex(f,"[('p', 'p8', 3, 2), ('p', 'p4', 7, 4)]","[('p', 'p8', 3, 4), ('p', 'p4', 7, 8)]").
neg_ex(f,"[('p', 'p8', 6, 2), ('b', 'b1', 5, 2), ('p', 'p1', 3, 8), ('p', 'p6', 2, 8)]","[('p', 'p8', 6, 6), ('b', 'b1', 5, 2), ('p', 'p1', 3, 5), ('p', 'p6', 2, 8)]").
neg_ex(f,"[('p', 'p8', 8, 5), ('b', 'b1', 2, 2), ('k', 'k1', 6, 6)]","[('p', 'p8', 8, 7), ('b', 'b1', 2, 2), ('k', 'k1', 6, 6)]").
neg_ex(f,"[('p', 'p8', 5, 6)]","[('p', 'p8', 5, 6)]").
neg_ex(f,"[('p', 'p8', 6, 4)]","[('p', 'p8', 6, 5)]").
neg_ex(f,"[('p', 'p8', 7, 8), ('p', 'p7', 4, 4)]","[('p', 'p8', 7, 8), ('p', 'p7', 4, 5)]").
neg_ex(f,"[('p', 'p8', 5, 3), ('n', 'n2', 1, 3)]","[('p', 'p8', 5, 2), ('n', 'n2', 1, 3)]").
neg_ex(f,"[('p', 'p8', 1, 3), ('r', 'r2', 6, 7)]","[('p', 'p8', 1, 4), ('r', 'r2', 6, 7)]").
neg_ex(f,"[('p', 'p8', 6, 3), ('r', 'r1', 5, 5), ('p', 'p6', 7, 3)]","[('p', 'p8', 6, 7), ('r', 'r1', 5, 5), ('p', 'p6', 7, 8)]").
neg_ex(f,"[('p', 'p8', 8, 5), ('p', 'p4', 5, 4)]","[('p', 'p8', 8, 3), ('p', 'p4', 5, 4)]").
