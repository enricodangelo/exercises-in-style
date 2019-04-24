# 3.1
# Write a program to prompt the user for hours and rate per hour using raw_input
# to compute gross pay. Pay the hourly rate for the hours up to 40 and 1.5 times
# the hourly rate for all hours worked above 40 hours. Use 45 hours and a rate of
# 10.50 per hour to test the program (the pay should be 498.75). You should use
# raw_input to read a string and float() to convert the string to a number.
# Do not worry about error checking the user input - assume the user types numbers
# properly.

raw_hours = raw_input("Enter Hours: ")
hours = float(raw_hours)
raw_rate = raw_input("Enter Rate: ")
rate = float(raw_rate)

total = 0.0
exceedHours = hours - 40.0
exceedRate = rate * 1.5
if (exceedHours > 0):
    exceed = exceedHours * exceedRate
    hours = hours - exceedHours
base = hours * rate
total = base + exceed
print total
