pos_ex(f,"[('p', 'p8', 3, 6)]","[('p', 'p8', 3, 8)]").
pos_ex(f,"[('p', 'p8', 2, 8), ('p', 'p3', 8, 4), ('b', 'b2', 4, 5)]","[('p', 'p8', 2, 8), ('p', 'p3', 8, 8), ('b', 'b2', 4, 5)]").
pos_ex(f,"[('p', 'p8', 4, 6), ('p', 'p2', 6, 1), ('q', 'q1', 1, 8)]","[('p', 'p8', 4, 8), ('p', 'p2', 6, 8), ('q', 'q1', 1, 8)]").
pos_ex(f,"[('p', 'p8', 6, 7), ('n', 'n1', 5, 5)]","[('p', 'p8', 6, 8), ('n', 'n1', 5, 5)]").
pos_ex(f,"[('p', 'p8', 3, 6), ('q', 'q1', 3, 2), ('p', 'p2', 5, 3), ('p', 'p4', 5, 8)]","[('p', 'p8', 3, 8), ('q', 'q1', 3, 2), ('p', 'p2', 5, 8), ('p', 'p4', 5, 8)]").
pos_ex(f,"[('p', 'p8', 1, 6), ('q', 'q1', 4, 5)]","[('p', 'p8', 1, 8), ('q', 'q1', 4, 5)]").
pos_ex(f,"[('p', 'p8', 8, 1), ('p', 'p7', 8, 3)]","[('p', 'p8', 8, 8), ('p', 'p7', 8, 8)]").
pos_ex(f,"[('p', 'p8', 6, 4), ('k', 'k1', 5, 7)]","[('p', 'p8', 6, 8), ('k', 'k1', 5, 7)]").
pos_ex(f,"[('p', 'p8', 3, 3), ('r', 'r2', 7, 2), ('p', 'p5', 2, 1)]","[('p', 'p8', 3, 8), ('r', 'r2', 7, 2), ('p', 'p5', 2, 8)]").
neg_ex(f,"[('p', 'p8', 7, 2), ('n', 'n1', 4, 4)]","[('p', 'p8', 7, 3), ('n', 'n1', 4, 4)]").
neg_ex(f,"[('p', 'p8', 7, 6), ('p', 'p4', 7, 1)]","[('p', 'p8', 7, 2), ('p', 'p4', 7, 1)]").
neg_ex(f,"[('p', 'p8', 7, 3), ('n', 'n2', 3, 4)]","[('p', 'p8', 7, 3), ('n', 'n2', 3, 4)]").
neg_ex(f,"[('p', 'p8', 4, 5), ('k', 'k1', 3, 8), ('p', 'p1', 6, 7), ('p', 'p2', 3, 2)]","[('p', 'p8', 4, 1), ('k', 'k1', 3, 8), ('p', 'p1', 6, 8), ('p', 'p2', 3, 8)]").
neg_ex(f,"[('p', 'p8', 6, 3), ('p', 'p6', 2, 1), ('b', 'b2', 3, 7)]","[('p', 'p8', 6, 1), ('p', 'p6', 2, 3), ('b', 'b2', 3, 7)]").
neg_ex(f,"[('p', 'p8', 1, 4), ('r', 'r2', 2, 1), ('r', 'r1', 6, 6)]","[('p', 'p8', 1, 7), ('r', 'r2', 2, 1), ('r', 'r1', 6, 6)]").
neg_ex(f,"[('p', 'p8', 6, 8), ('b', 'b2', 1, 1), ('p', 'p7', 1, 4), ('q', 'q1', 4, 1)]","[('p', 'p8', 6, 2), ('b', 'b2', 1, 1), ('p', 'p7', 1, 1), ('q', 'q1', 4, 1)]").
neg_ex(f,"[('p', 'p8', 6, 5), ('r', 'r2', 5, 6)]","[('p', 'p8', 6, 4), ('r', 'r2', 5, 6)]").
neg_ex(f,"[('p', 'p8', 4, 7)]","[('p', 'p8', 4, 6)]").
