import urllib
import json

url = raw_input("Enter location: ")
print 'Retrieving', url

uh = urllib.urlopen(url)
data = uh.read()
print 'Retrieved', len(data), 'characters'

json_data = json.loads(data)

sum_comment = 0
count = 0
for comment in json_data['comments']:
    count += 1
    sum_comment += comment['count']

print "Count:", count
print "Sum:", sum_comment
