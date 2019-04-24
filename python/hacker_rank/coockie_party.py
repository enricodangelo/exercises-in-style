n,m = raw_input().strip().split(' ')
n,m = [int(n),int(m)]

rest = None
modulo = m % n
if modulo == 0:
    rest = 0
else:
    rest = n - (m % n)

print rest
