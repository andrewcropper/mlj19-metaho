pos_ex(f,"[('p', 'p8', 3, 4), ('p', 'p7', 6, 8), ('p', 'p2', 5, 2), ('b', 'b1', 4, 7)]","[('p', 'p8', 3, 8), ('p', 'p7', 6, 8), ('p', 'p2', 5, 8), ('b', 'b1', 4, 7)]").
pos_ex(f,"[('p', 'p8', 1, 4)]","[('p', 'p8', 1, 8)]").
pos_ex(f,"[('p', 'p8', 4, 6), ('b', 'b2', 7, 3)]","[('p', 'p8', 4, 8), ('b', 'b2', 7, 3)]").
pos_ex(f,"[('p', 'p8', 2, 6), ('p', 'p4', 1, 4), ('p', 'p3', 8, 4), ('n', 'n1', 7, 1)]","[('p', 'p8', 2, 8), ('p', 'p4', 1, 8), ('p', 'p3', 8, 8), ('n', 'n1', 7, 1)]").
pos_ex(f,"[('p', 'p8', 3, 8), ('n', 'n2', 4, 2)]","[('p', 'p8', 3, 8), ('n', 'n2', 4, 2)]").
pos_ex(f,"[('p', 'p8', 1, 2)]","[('p', 'p8', 1, 8)]").
neg_ex(f,"[('p', 'p8', 8, 7), ('p', 'p2', 1, 4), ('r', 'r2', 3, 4), ('q', 'q1', 3, 8)]","[('p', 'p8', 8, 3), ('p', 'p2', 1, 8), ('r', 'r2', 3, 4), ('q', 'q1', 3, 8)]").
neg_ex(f,"[('p', 'p8', 8, 3)]","[('p', 'p8', 8, 4)]").
neg_ex(f,"[('p', 'p8', 4, 3), ('b', 'b2', 4, 5), ('p', 'p4', 4, 8), ('b', 'b1', 3, 8)]","[('p', 'p8', 4, 5), ('b', 'b2', 4, 5), ('p', 'p4', 4, 5), ('b', 'b1', 3, 8)]").
neg_ex(f,"[('p', 'p8', 1, 4)]","[('p', 'p8', 1, 2)]").
neg_ex(f,"[('p', 'p8', 8, 6)]","[('p', 'p8', 8, 5)]").
neg_ex(f,"[('p', 'p8', 2, 2), ('q', 'q1', 4, 5), ('n', 'n1', 1, 7), ('p', 'p4', 2, 3)]","[('p', 'p8', 2, 2), ('q', 'q1', 4, 5), ('n', 'n1', 1, 7), ('p', 'p4', 2, 2)]").
