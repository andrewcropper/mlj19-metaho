pos_ex(f,"[('p', 'p8', 5, 5), ('n', 'n1', 2, 1), ('p', 'p3', 6, 2)]","[('p', 'p8', 5, 8), ('n', 'n1', 2, 1), ('p', 'p3', 6, 8)]").
pos_ex(f,"[('p', 'p8', 6, 6), ('p', 'p5', 5, 6), ('p', 'p2', 8, 1), ('p', 'p4', 1, 8)]","[('p', 'p8', 6, 8), ('p', 'p5', 5, 8), ('p', 'p2', 8, 8), ('p', 'p4', 1, 8)]").
pos_ex(f,"[('p', 'p8', 8, 4), ('n', 'n1', 7, 7), ('k', 'k1', 6, 6), ('p', 'p7', 3, 7)]","[('p', 'p8', 8, 8), ('n', 'n1', 7, 7), ('k', 'k1', 6, 6), ('p', 'p7', 3, 8)]").
pos_ex(f,"[('p', 'p8', 6, 1), ('p', 'p7', 3, 6), ('p', 'p2', 5, 7), ('p', 'p4', 8, 3)]","[('p', 'p8', 6, 8), ('p', 'p7', 3, 8), ('p', 'p2', 5, 8), ('p', 'p4', 8, 8)]").
pos_ex(f,"[('p', 'p8', 5, 6), ('p', 'p3', 7, 8), ('n', 'n2', 5, 7)]","[('p', 'p8', 5, 8), ('p', 'p3', 7, 8), ('n', 'n2', 5, 7)]").
pos_ex(f,"[('p', 'p8', 1, 8), ('p', 'p2', 5, 2), ('p', 'p7', 8, 3), ('r', 'r2', 6, 1)]","[('p', 'p8', 1, 8), ('p', 'p2', 5, 8), ('p', 'p7', 8, 8), ('r', 'r2', 6, 1)]").
pos_ex(f,"[('p', 'p8', 3, 2)]","[('p', 'p8', 3, 8)]").
pos_ex(f,"[('p', 'p8', 6, 1), ('p', 'p1', 6, 8), ('k', 'k1', 3, 1)]","[('p', 'p8', 6, 8), ('p', 'p1', 6, 8), ('k', 'k1', 3, 1)]").
pos_ex(f,"[('p', 'p8', 7, 3), ('b', 'b1', 1, 4)]","[('p', 'p8', 7, 8), ('b', 'b1', 1, 4)]").
pos_ex(f,"[('p', 'p8', 7, 6), ('n', 'n1', 6, 4), ('b', 'b1', 1, 8), ('p', 'p3', 8, 8)]","[('p', 'p8', 7, 8), ('n', 'n1', 6, 4), ('b', 'b1', 1, 8), ('p', 'p3', 8, 8)]").
neg_ex(f,"[('p', 'p8', 6, 1), ('p', 'p2', 1, 8), ('p', 'p6', 5, 8), ('b', 'b1', 2, 5)]","[('p', 'p8', 6, 1), ('p', 'p2', 1, 3), ('p', 'p6', 5, 4), ('b', 'b1', 2, 5)]").
neg_ex(f,"[('p', 'p8', 5, 2)]","[('p', 'p8', 5, 7)]").
neg_ex(f,"[('p', 'p8', 3, 2)]","[('p', 'p8', 3, 2)]").
neg_ex(f,"[('p', 'p8', 6, 8), ('k', 'k1', 1, 5), ('p', 'p1', 8, 1)]","[('p', 'p8', 6, 2), ('k', 'k1', 1, 5), ('p', 'p1', 8, 2)]").
neg_ex(f,"[('p', 'p8', 6, 2), ('n', 'n1', 7, 2), ('p', 'p6', 1, 6), ('q', 'q1', 2, 3)]","[('p', 'p8', 6, 8), ('n', 'n1', 7, 2), ('p', 'p6', 1, 2), ('q', 'q1', 2, 3)]").
neg_ex(f,"[('p', 'p8', 3, 2)]","[('p', 'p8', 3, 1)]").
neg_ex(f,"[('p', 'p8', 7, 1)]","[('p', 'p8', 7, 7)]").
neg_ex(f,"[('p', 'p8', 1, 6)]","[('p', 'p8', 1, 2)]").
neg_ex(f,"[('p', 'p8', 4, 8), ('p', 'p1', 2, 8), ('p', 'p2', 3, 6), ('p', 'p6', 1, 4)]","[('p', 'p8', 4, 6), ('p', 'p1', 2, 1), ('p', 'p2', 3, 8), ('p', 'p6', 1, 6)]").
neg_ex(f,"[('p', 'p8', 1, 2), ('p', 'p1', 4, 4), ('r', 'r1', 3, 5), ('n', 'n1', 5, 4)]","[('p', 'p8', 1, 2), ('p', 'p1', 4, 4), ('r', 'r1', 3, 5), ('n', 'n1', 5, 4)]").
