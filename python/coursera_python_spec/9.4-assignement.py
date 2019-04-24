# 9.4 Write a program to read through the mbox-short.txt and figure out who has
# the sent the greatest number of mail messages. The program looks for 'From '
# lines and takes the second word of those lines as the person who sent the mail.
# The program creates a Python dictionary that maps the sender's mail address to a
# count of the number of times they appear in the file. After the dictionary is
# produced, the program reads through the dictionary using a maximum loop to find
# the most prolific committer.

fname = raw_input("Enter file name: ")
if len(fname) < 1 : fname = "mbox-short.txt"
senders = dict()
max_n = None
max_sender = None

fh = open(fname)

for line in fh:
    if line.startswith("From "):
        sender = line.split()[1]
        senders[sender] = senders.get(sender, 0) + 1

for k in senders:
    if max_n is None or senders[k] > max_n:
        max_n = senders[k]
        max_sender = k

print max_sender, max_n
