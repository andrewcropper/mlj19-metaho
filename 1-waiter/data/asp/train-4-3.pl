pos_ex(f,"1,3,coffee-down-empty,tea-down-empty","3,3,coffee-up-coffee,tea-up-tea").
pos_ex(f,"1,3,tea-down-empty,tea-down-empty","3,3,tea-up-tea,tea-up-tea").
pos_ex(f,"1,5,tea-down-empty,tea-down-empty,coffee-down-empty,coffee-down-empty","5,5,tea-up-tea,tea-up-tea,coffee-up-coffee,coffee-up-coffee").
pos_ex(f,"1,5,coffee-down-empty,tea-down-empty,coffee-down-empty,tea-down-empty","5,5,coffee-up-coffee,tea-up-tea,coffee-up-coffee,tea-up-tea").
neg_ex(f,"1,5,tea-down-empty,tea-down-empty,coffee-down-empty,tea-down-empty","5,5,tea-up-tea,tea-down-empty,coffee-up-coffee,tea-up-coffee").
neg_ex(f,"1,5,tea-down-empty,coffee-down-empty,tea-down-empty,tea-down-empty","5,5,tea-up-tea,coffee-up-tea,tea-up-tea,tea-down-empty").
neg_ex(f,"1,3,tea-down-empty,coffee-down-empty","3,3,tea-down-empty,coffee-up-coffee").
neg_ex(f,"1,5,coffee-down-empty,tea-down-empty,tea-down-empty,coffee-down-empty","5,5,coffee-up-coffee,tea-up-coffee,tea-up-tea,coffee-up-coffee").
