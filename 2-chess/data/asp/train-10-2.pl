pos_ex(f,"[('p', 'p8', 1, 3), ('n', 'n1', 8, 2), ('k', 'k1', 4, 6), ('n', 'n2', 1, 4)]","[('p', 'p8', 1, 8), ('n', 'n1', 8, 2), ('k', 'k1', 4, 6), ('n', 'n2', 1, 4)]").
pos_ex(f,"[('p', 'p8', 5, 1), ('p', 'p1', 4, 1)]","[('p', 'p8', 5, 8), ('p', 'p1', 4, 8)]").
pos_ex(f,"[('p', 'p8', 8, 1), ('b', 'b2', 6, 5)]","[('p', 'p8', 8, 8), ('b', 'b2', 6, 5)]").
pos_ex(f,"[('p', 'p8', 2, 5), ('p', 'p5', 6, 1), ('n', 'n2', 2, 2)]","[('p', 'p8', 2, 8), ('p', 'p5', 6, 8), ('n', 'n2', 2, 2)]").
pos_ex(f,"[('p', 'p8', 2, 4)]","[('p', 'p8', 2, 8)]").
pos_ex(f,"[('p', 'p8', 3, 5)]","[('p', 'p8', 3, 8)]").
pos_ex(f,"[('p', 'p8', 4, 4), ('p', 'p3', 6, 6), ('k', 'k1', 6, 8), ('r', 'r2', 6, 3)]","[('p', 'p8', 4, 8), ('p', 'p3', 6, 8), ('k', 'k1', 6, 8), ('r', 'r2', 6, 3)]").
pos_ex(f,"[('p', 'p8', 2, 4), ('p', 'p6', 8, 1)]","[('p', 'p8', 2, 8), ('p', 'p6', 8, 8)]").
pos_ex(f,"[('p', 'p8', 2, 5), ('p', 'p7', 3, 4)]","[('p', 'p8', 2, 8), ('p', 'p7', 3, 8)]").
pos_ex(f,"[('p', 'p8', 8, 1), ('p', 'p7', 5, 7), ('q', 'q1', 3, 5), ('b', 'b1', 8, 2)]","[('p', 'p8', 8, 8), ('p', 'p7', 5, 8), ('q', 'q1', 3, 5), ('b', 'b1', 8, 2)]").
neg_ex(f,"[('p', 'p8', 7, 2), ('p', 'p7', 5, 8), ('p', 'p1', 2, 4), ('p', 'p5', 4, 6)]","[('p', 'p8', 7, 5), ('p', 'p7', 5, 6), ('p', 'p1', 2, 8), ('p', 'p5', 4, 8)]").
neg_ex(f,"[('p', 'p8', 5, 1), ('p', 'p5', 7, 2), ('n', 'n2', 8, 4), ('p', 'p7', 7, 4)]","[('p', 'p8', 5, 1), ('p', 'p5', 7, 6), ('n', 'n2', 8, 4), ('p', 'p7', 7, 6)]").
neg_ex(f,"[('p', 'p8', 4, 1), ('b', 'b2', 1, 8), ('r', 'r2', 5, 4)]","[('p', 'p8', 4, 4), ('b', 'b2', 1, 8), ('r', 'r2', 5, 4)]").
neg_ex(f,"[('p', 'p8', 8, 5), ('p', 'p2', 8, 6), ('r', 'r2', 8, 7), ('p', 'p4', 3, 1)]","[('p', 'p8', 8, 8), ('p', 'p2', 8, 4), ('r', 'r2', 8, 7), ('p', 'p4', 3, 3)]").
neg_ex(f,"[('p', 'p8', 3, 4), ('p', 'p6', 5, 4), ('r', 'r1', 4, 3), ('r', 'r2', 6, 3)]","[('p', 'p8', 3, 1), ('p', 'p6', 5, 2), ('r', 'r1', 4, 3), ('r', 'r2', 6, 3)]").
neg_ex(f,"[('p', 'p8', 4, 2)]","[('p', 'p8', 4, 3)]").
neg_ex(f,"[('p', 'p8', 4, 6), ('b', 'b2', 5, 6), ('q', 'q1', 6, 8), ('p', 'p3', 6, 2)]","[('p', 'p8', 4, 4), ('b', 'b2', 5, 6), ('q', 'q1', 6, 8), ('p', 'p3', 6, 2)]").
neg_ex(f,"[('p', 'p8', 8, 4), ('p', 'p5', 7, 6)]","[('p', 'p8', 8, 7), ('p', 'p5', 7, 8)]").
neg_ex(f,"[('p', 'p8', 5, 6), ('p', 'p1', 6, 5)]","[('p', 'p8', 5, 7), ('p', 'p1', 6, 8)]").
neg_ex(f,"[('p', 'p8', 8, 7), ('k', 'k1', 5, 4), ('p', 'p5', 4, 1)]","[('p', 'p8', 8, 7), ('k', 'k1', 5, 4), ('p', 'p5', 4, 8)]").