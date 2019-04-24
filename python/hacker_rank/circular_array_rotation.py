n_s, k_s, q_s = raw_input().split()
array = [int(x) for x in raw_input().split()]
n = int(n_s.strip())
k = int(k_s.strip())
q = int(q_s.strip())

queries = []
for i in range(q):
    queries.append(int(raw_input().strip()))

for query in queries:
    print array[abs((query - k) % len(array))]
