# import libraries
import sys

# read input
smp = sys.argv[1]

# construct the full NAPTR record
naptr_record = "100 10 \"U\" \"oasis-bdxr-smp-2#dbnalliance-1.1\" \"!^.*$!" + smp + "!\" ."

#print out the result
print(naptr_record)
