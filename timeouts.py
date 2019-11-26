#!/usr/bin/env python

import re
from glob import glob
from collections import defaultdict
from itertools import product

paradigms = ['pl', 'asp']

for paradigm, impl in product(paradigms, ['old', 'new']):
    print((paradigm, impl))
    timeouts = defaultdict(lambda: 0)
    for i in range(1,11):
        for f in glob(f'programs/{paradigm}/{impl}-{i}-*'):
            file = open(f)
            time = re.findall('%time,([0-9]{1,3})', file.read())[0]
            # print(time)
            if int(time) >= 600:
                timeouts[i] += 1
        print((i, timeouts[i]))
            

