import re

print sum( [ int(n) for n in re.findall('[0-9]+',open(raw_input('Insert filename: ')).read()) ] )
