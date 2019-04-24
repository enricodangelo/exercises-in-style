# 4.6 Write a program to prompt the user for hours and rate per hour using
# raw_input to compute gross pay. Award time-and-a-half for the hourly rate for
# all hours worked above 40 hours. Put the logic to do the computation of
# time-and-a-half in a function called computepay() and use the function to do the
# computation. The function should return a value. Use 45 hours and a rate of
# 10.50 per hour to test the program (the pay should be 498.75). You should use
# raw_input to read a string and float() to convert the string to a number. Do not
# worry about error checking the user input unless you want to - you can assume
# the user types numbers properly. Do not name your variable sum or use the sum()
# function.

def computepay(hours,rate):
    total = 0.0
    exceedHours = hours - 40.0
    exceedRate = rate * 1.5
    if (exceedHours > 0):
        exceed = exceedHours * exceedRate
        hours = hours - exceedHours
    base = hours * rate
    total = base + exceed
    return total

raw_hours = raw_input("Enter Hours: ")
hours = float(raw_hours)
raw_rate = raw_input("Enter Rate: ")
rate = float(raw_rate)

total = computepay(hours, rate)
print total
