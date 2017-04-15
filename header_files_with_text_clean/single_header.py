#!/usr/bin/env python

import pandas as pd
import numpy as np
import csv
import re
import sys

df = pd.read_csv(sys.argv[1], sep = ',', header=None)

headers = []
for i in range(5):
    headers.append(df.ix[0][i])

for j in range(5,int(df.shape[1])):
    headers.append(df.ix[1][j].replace(" ", "_"))

pd.DataFrame(headers).to_csv(str('./edited/'+sys.argv[1]), sep = '\t', index = False, header=False)
