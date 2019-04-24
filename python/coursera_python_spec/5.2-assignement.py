# 5.2 Write a program that repeatedly prompts a user for integer numbers until the
#  user enters 'done'. Once 'done' is entered, print out the largest and smallest
#  of the numbers. If the user enters anything other than a valid number catch it
#  with a try/except and put out an appropriate message and ignore the number.
#  Enter the numbers from the book for problem 5.1 and Match the desired output as
#  shown.

largest = None
smallest = None
done = False
while not done:
    raw_in = raw_input("Enter a number: ")
    try:
        if (raw_in == "done"):
            print "Maximum is", largest
            print "Minimum is", smallest
            done = True
        else:
            n = int(raw_in)
            if (smallest is None or n < smallest):
                smallest = n
            if (largest is None or n > largest):
                largest = n
    except ValueError:
        print "Invalid input"
