pos_ex(f,"[('p', 'p8', 8, 1)]","[('p', 'p8', 8, 8)]").
pos_ex(f,"[('p', 'p8', 8, 6), ('r', 'r1', 8, 4), ('p', 'p4', 3, 8)]","[('p', 'p8', 8, 8), ('r', 'r1', 8, 4), ('p', 'p4', 3, 8)]").
pos_ex(f,"[('p', 'p8', 5, 2), ('n', 'n1', 4, 3), ('r', 'r1', 7, 4)]","[('p', 'p8', 5, 8), ('n', 'n1', 4, 3), ('r', 'r1', 7, 4)]").
pos_ex(f,"[('p', 'p8', 6, 8), ('n', 'n1', 5, 7), ('p', 'p2', 6, 7), ('r', 'r1', 4, 5)]","[('p', 'p8', 6, 8), ('n', 'n1', 5, 7), ('p', 'p2', 6, 8), ('r', 'r1', 4, 5)]").
pos_ex(f,"[('p', 'p8', 1, 2), ('b', 'b2', 1, 7), ('k', 'k1', 5, 1)]","[('p', 'p8', 1, 8), ('b', 'b2', 1, 7), ('k', 'k1', 5, 1)]").
pos_ex(f,"[('p', 'p8', 5, 1), ('k', 'k1', 6, 2), ('p', 'p7', 7, 4)]","[('p', 'p8', 5, 8), ('k', 'k1', 6, 2), ('p', 'p7', 7, 8)]").
pos_ex(f,"[('p', 'p8', 8, 7)]","[('p', 'p8', 8, 8)]").
pos_ex(f,"[('p', 'p8', 6, 1), ('p', 'p4', 6, 7), ('p', 'p5', 3, 6), ('p', 'p2', 1, 3)]","[('p', 'p8', 6, 8), ('p', 'p4', 6, 8), ('p', 'p5', 3, 8), ('p', 'p2', 1, 8)]").
pos_ex(f,"[('p', 'p8', 8, 7), ('r', 'r1', 2, 7), ('k', 'k1', 3, 5), ('q', 'q1', 1, 1)]","[('p', 'p8', 8, 8), ('r', 'r1', 2, 7), ('k', 'k1', 3, 5), ('q', 'q1', 1, 1)]").
neg_ex(f,"[('p', 'p8', 1, 4)]","[('p', 'p8', 1, 3)]").
neg_ex(f,"[('p', 'p8', 6, 8), ('r', 'r2', 1, 4), ('b', 'b1', 4, 8), ('p', 'p4', 8, 8)]","[('p', 'p8', 6, 7), ('r', 'r2', 1, 4), ('b', 'b1', 4, 8), ('p', 'p4', 8, 8)]").
neg_ex(f,"[('p', 'p8', 2, 1), ('b', 'b1', 4, 8), ('p', 'p7', 2, 6), ('r', 'r2', 8, 5)]","[('p', 'p8', 2, 1), ('b', 'b1', 4, 8), ('p', 'p7', 2, 8), ('r', 'r2', 8, 5)]").
neg_ex(f,"[('p', 'p8', 1, 3), ('p', 'p5', 6, 6)]","[('p', 'p8', 1, 4), ('p', 'p5', 6, 1)]").
neg_ex(f,"[('p', 'p8', 6, 7)]","[('p', 'p8', 6, 4)]").
neg_ex(f,"[('p', 'p8', 8, 3)]","[('p', 'p8', 8, 2)]").
neg_ex(f,"[('p', 'p8', 3, 7)]","[('p', 'p8', 3, 5)]").
neg_ex(f,"[('p', 'p8', 7, 4), ('r', 'r1', 3, 5), ('r', 'r2', 8, 1), ('b', 'b1', 6, 7)]","[('p', 'p8', 7, 5), ('r', 'r1', 3, 5), ('r', 'r2', 8, 1), ('b', 'b1', 6, 7)]").
neg_ex(f,"[('p', 'p8', 3, 6), ('p', 'p1', 5, 2), ('q', 'q1', 2, 4)]","[('p', 'p8', 3, 5), ('p', 'p1', 5, 4), ('q', 'q1', 2, 4)]").