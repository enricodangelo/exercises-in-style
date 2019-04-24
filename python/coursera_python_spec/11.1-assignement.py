import re

filename = raw_input('Enter the filename: ')
total = 0

with open(filename) as file_handle:
    for line in file_handle.readlines():
        numbers = re.findall('[0-9]+', line)
        for number in numbers:
            n = int(number)
            total = total + n

print total
