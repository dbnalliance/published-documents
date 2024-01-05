#!/bin/bash 

# Queries the DNS and returns only the line containing the SMP service  
NAPTR=`dig -t NAPTR $1 | grep 'oasis-bdxr-smp-2#dbnalliance-1.1'` 

# Exits script if no service is found 
if [ -z "$NAPTR" ] 
then 
	echo "No records exists for participant" 
	exit
fi  

# Return only the reg.exp. field from the NAPTR string 
# Produces the string: "!^.*$!https://smp.example.com/myservice/! 
REGEX=`echo $NAPTR | grep -o '!^.*!'`

# Assumes that applying the regular expression is not necessary and that the string part contains the entire URL. 
# Splits the string using "!" as delimiter and returns the string part 
# Produces the string: https://smp.example.com/myservice/!" 
RESULT=`echo $REGEX | cut -d'!' -f3`

echo $RESULT
