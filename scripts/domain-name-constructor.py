# DNS domain name
# Production:	sml.dbnalliance.net
# Test:			sml.dbnalliance.com
DOMAIN = 'sml.dbnalliance.com'

# import libraries
import sys
from hashlib import sha256 
from base64 import b32encode

# set company identifiers
scheme = sys.argv[1]
id = sys.argv[2]

# concatenation of scheme and id, produces the string: GLN::1234567890123
party = scheme + '::' + id

# base32 encode the sha256 hash of the lowercased party string and strip trailing '='s 
hostname = b32encode(sha256(party.lower().encode('utf-8')).digest()).rstrip(b'=')

# construct the full DNS name
dns_name = hostname.decode("utf-8").lower() + '.' + DOMAIN

#print out the result
print(dns_name)