# Following Links in Python
#
# In this assignment you will write a Python program that expands on
# http://www.pythonlearn.com/code/urllinks.py. The program will use urllib to read
# the HTML from the data files below, extract the href= vaues from the anchor
# tags, scan for a tag that is in a particular position relative to the first name
# in the list, follow that link and repeat the process a number of times and
# report the last name you find.
#
# We provide two files for this assignment. One is a sample file where we give you
# the name for your testing and the other is the actual data you need to process
# for the assignment
#
# Sample problem: Start at http://python-data.dr-chuck.net/known_by_Fikret.html
# Find the link at position 3 (the first name is 1). Follow that link. Repeat this
# process 4 times. The answer is the last name that you retrieve.
# Sequence of names: Fikret Montgomery Mhairade Butchi Anayah
# Last name in sequence: Anayah
# Actual problem: Start at: http://python-data.dr-chuck.net/known_by_Ricky.html
# Find the link at position 18 (the first name is 1). Follow that link. Repeat
# this process 7 times. The answer is the last name that you retrieve.
# Hint: The first character of the name of the last page that you will load is: M

# Note - this code must run in Python 2.x and you must download
# http://www.pythonlearn.com/code/BeautifulSoup.py
# Into the same folder as this program

import urllib
from BeautifulSoup import *

url = raw_input("Enter URL: ")
nth = int(raw_input("Enter count: "))
target = int(raw_input("Enter position: "))
html = None
name_sequence = []

while nth > 0:
    nth = nth - 1
    pos = target
    html = urllib.urlopen(url).read()
    soup = BeautifulSoup(html)
    tags = soup('a')
    for tag in tags:
        pos = pos - 1
        url = tag.get('href', None)
        name = tag.text
        if pos == 0:
            name_sequence.append(name)
            break
print name_sequence[len(name_sequence) - 1]
