pos_ex(f,"[('p', 'p8', 4, 8), ('p', 'p4', 3, 4)]","[('p', 'p8', 4, 8), ('p', 'p4', 3, 8)]").
pos_ex(f,"[('p', 'p8', 7, 1), ('k', 'k1', 6, 3)]","[('p', 'p8', 7, 8), ('k', 'k1', 6, 3)]").
pos_ex(f,"[('p', 'p8', 7, 3), ('b', 'b2', 5, 7), ('r', 'r2', 5, 1), ('p', 'p3', 6, 8)]","[('p', 'p8', 7, 8), ('b', 'b2', 5, 7), ('r', 'r2', 5, 1), ('p', 'p3', 6, 8)]").
pos_ex(f,"[('p', 'p8', 7, 8), ('p', 'p7', 5, 5), ('b', 'b2', 6, 7), ('p', 'p3', 8, 6)]","[('p', 'p8', 7, 8), ('p', 'p7', 5, 8), ('b', 'b2', 6, 7), ('p', 'p3', 8, 8)]").
pos_ex(f,"[('p', 'p8', 4, 5)]","[('p', 'p8', 4, 8)]").
pos_ex(f,"[('p', 'p8', 4, 2), ('q', 'q1', 7, 4)]","[('p', 'p8', 4, 8), ('q', 'q1', 7, 4)]").
pos_ex(f,"[('p', 'p8', 5, 4), ('r', 'r1', 8, 8), ('n', 'n1', 1, 1)]","[('p', 'p8', 5, 8), ('r', 'r1', 8, 8), ('n', 'n1', 1, 1)]").
pos_ex(f,"[('p', 'p8', 8, 8), ('b', 'b1', 2, 6), ('p', 'p1', 1, 5)]","[('p', 'p8', 8, 8), ('b', 'b1', 2, 6), ('p', 'p1', 1, 8)]").
pos_ex(f,"[('p', 'p8', 4, 8), ('p', 'p7', 8, 5), ('b', 'b2', 1, 6)]","[('p', 'p8', 4, 8), ('p', 'p7', 8, 8), ('b', 'b2', 1, 6)]").
pos_ex(f,"[('p', 'p8', 5, 3), ('p', 'p6', 8, 8)]","[('p', 'p8', 5, 8), ('p', 'p6', 8, 8)]").
neg_ex(f,"[('p', 'p8', 5, 3), ('p', 'p5', 7, 4), ('p', 'p6', 5, 5), ('k', 'k1', 8, 8)]","[('p', 'p8', 5, 8), ('p', 'p5', 7, 8), ('p', 'p6', 5, 7), ('k', 'k1', 8, 8)]").
neg_ex(f,"[('p', 'p8', 1, 6), ('p', 'p3', 2, 2), ('b', 'b2', 7, 1), ('n', 'n2', 1, 3)]","[('p', 'p8', 1, 5), ('p', 'p3', 2, 3), ('b', 'b2', 7, 1), ('n', 'n2', 1, 3)]").
neg_ex(f,"[('p', 'p8', 8, 2), ('r', 'r1', 7, 8), ('q', 'q1', 5, 7), ('r', 'r2', 4, 6)]","[('p', 'p8', 8, 5), ('r', 'r1', 7, 8), ('q', 'q1', 5, 7), ('r', 'r2', 4, 6)]").
neg_ex(f,"[('p', 'p8', 8, 3), ('b', 'b1', 6, 2), ('p', 'p4', 1, 4), ('p', 'p1', 7, 4)]","[('p', 'p8', 8, 5), ('b', 'b1', 6, 2), ('p', 'p4', 1, 7), ('p', 'p1', 7, 6)]").
neg_ex(f,"[('p', 'p8', 2, 2), ('p', 'p2', 3, 3), ('b', 'b1', 1, 4), ('p', 'p5', 2, 5)]","[('p', 'p8', 2, 1), ('p', 'p2', 3, 5), ('b', 'b1', 1, 4), ('p', 'p5', 2, 8)]").
neg_ex(f,"[('p', 'p8', 6, 2), ('r', 'r1', 6, 8)]","[('p', 'p8', 6, 6), ('r', 'r1', 6, 8)]").
neg_ex(f,"[('p', 'p8', 4, 2)]","[('p', 'p8', 4, 1)]").
neg_ex(f,"[('p', 'p8', 5, 5), ('p', 'p1', 1, 2), ('p', 'p7', 6, 6), ('b', 'b1', 7, 4)]","[('p', 'p8', 5, 3), ('p', 'p1', 1, 4), ('p', 'p7', 6, 7), ('b', 'b1', 7, 4)]").
neg_ex(f,"[('p', 'p8', 7, 8), ('p', 'p3', 2, 4), ('p', 'p7', 1, 6)]","[('p', 'p8', 7, 5), ('p', 'p3', 2, 2), ('p', 'p7', 1, 5)]").
neg_ex(f,"[('p', 'p8', 2, 6), ('r', 'r1', 6, 2), ('p', 'p7', 6, 5), ('p', 'p6', 4, 8)]","[('p', 'p8', 2, 8), ('r', 'r1', 6, 2), ('p', 'p7', 6, 1), ('p', 'p6', 4, 8)]").
