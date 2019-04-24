time = raw_input().strip()
ctime = None

if time.startswith('12') and time.endswith('AM'):
    ctime = '00' + time[2:len(time) - 2]
elif time.startswith('12') and time.endswith('PM'):
    ctime = time[0:len(time) - 2]
elif time.endswith('PM'):
    h = int(time[0:2])
    h += 12
    ctime = str(h) + time[2:len(time) - 2]
else:
    ctime = time[:len(time) - 2]

print ctime
