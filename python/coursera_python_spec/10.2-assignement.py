# 10.2 Write a program to read through the mbox-short.txt and figure out the
# distribution by hour of the day for each of the messages. You can pull the hour
# out from the 'From ' line by finding the time and then splitting the string a
# second time using a colon.
# From stephen.marquard@uct.ac.za Sat Jan  5 09:14:16 2008
# Once you have accumulated the counts for each hour, print out the counts, sorted
# by hour as shown below.

fname = raw_input("Enter file: ")
if len(fname) < 1 : fname = "mbox-short.txt"

fh = open(fname)
dist = dict()

for line in fh:
    if line.startswith("From "):
        hour =  line.split()[5].split(":")[0]
        dist[hour] = dist.get(hour, 0) + 1

dist = sorted(dist.items())
for k, v in dist:
    print k, v
