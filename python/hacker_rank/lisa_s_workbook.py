import math

n_s, k_s = raw_input().split()
n = int(n_s.strip())
k = int(k_s.strip())

count = 0

exercices = [int(x.strip()) for x in raw_input().split()]

prev_pages = 0
for i in range(n):
    pages_in_chap = exercices[i] / k
    if exercices[i] % k != 0:
        pages_in_chap += 1
    #pagine del capitolo
    pages = [prev_pages + p + 1 for p in range(pages_in_chap)]
    ex_in_chap = [x + 1 for x in range(exercices[i])]

    for q in range(pages_in_chap):
        if pages[q] in ex_in_chap[ (q * k) : ((q + 1) * k) ]:
            count += 1

    prev_pages += pages_in_chap

print count
