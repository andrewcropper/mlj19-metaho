pos_ex(f,"[('p', 'p8', 8, 3)]","[('p', 'p8', 8, 8)]").
pos_ex(f,"[('p', 'p8', 3, 1), ('r', 'r1', 3, 6), ('p', 'p5', 4, 5), ('p', 'p1', 6, 4)]","[('p', 'p8', 3, 8), ('r', 'r1', 3, 6), ('p', 'p5', 4, 8), ('p', 'p1', 6, 8)]").
pos_ex(f,"[('p', 'p8', 1, 8), ('b', 'b1', 2, 3)]","[('p', 'p8', 1, 8), ('b', 'b1', 2, 3)]").
pos_ex(f,"[('p', 'p8', 7, 5), ('n', 'n2', 5, 7)]","[('p', 'p8', 7, 8), ('n', 'n2', 5, 7)]").
pos_ex(f,"[('p', 'p8', 8, 5), ('p', 'p5', 5, 5), ('p', 'p2', 8, 6), ('p', 'p3', 7, 8)]","[('p', 'p8', 8, 8), ('p', 'p5', 5, 8), ('p', 'p2', 8, 8), ('p', 'p3', 7, 8)]").
pos_ex(f,"[('p', 'p8', 7, 4), ('p', 'p3', 3, 3), ('p', 'p7', 7, 1), ('p', 'p5', 8, 4)]","[('p', 'p8', 7, 8), ('p', 'p3', 3, 8), ('p', 'p7', 7, 8), ('p', 'p5', 8, 8)]").
neg_ex(f,"[('p', 'p8', 3, 6)]","[('p', 'p8', 3, 4)]").
neg_ex(f,"[('p', 'p8', 1, 5)]","[('p', 'p8', 1, 3)]").
neg_ex(f,"[('p', 'p8', 3, 4), ('n', 'n1', 3, 5), ('p', 'p5', 4, 3), ('p', 'p4', 3, 6)]","[('p', 'p8', 3, 7), ('n', 'n1', 3, 5), ('p', 'p5', 4, 8), ('p', 'p4', 3, 8)]").
neg_ex(f,"[('p', 'p8', 5, 7)]","[('p', 'p8', 5, 7)]").
neg_ex(f,"[('p', 'p8', 6, 6), ('r', 'r1', 8, 4)]","[('p', 'p8', 6, 4), ('r', 'r1', 8, 4)]").
neg_ex(f,"[('p', 'p8', 7, 7), ('q', 'q1', 1, 8), ('p', 'p7', 1, 2)]","[('p', 'p8', 7, 4), ('q', 'q1', 1, 8), ('p', 'p7', 1, 1)]").
