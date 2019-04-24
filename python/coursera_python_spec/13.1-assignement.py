import urllib
import xml.etree.ElementTree as ET

url = raw_input("Enter location: ")
print 'Retrieving', url

uh = urllib.urlopen(url)
data = uh.read()
print 'Retrieved', len(data), 'characters'

tree = ET.fromstring(data)

counts = tree.findall('.//count')
count_sum = 0
for count in counts:
    count_sum = count_sum + int(count.text)

print "Count:", len(counts)
print "Sum:", count_sum
