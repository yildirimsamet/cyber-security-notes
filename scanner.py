#!/bin/python3

import sys #allows us to enter command line args
import socket
from datetime import datetime

#a shitty scanner.

#define our target

if len(sys.argv) == 2:
	target = socket.gethostbyname(sys.argv[1]) #translate a host name to IPV4
else:
	print("Invalid amount of args.")
	print("Syntax : python3 scanner.py <ip>")
	sys.exit();
#add a banner
print("-"*50)
print("Scanning target "+target)
print("Time started: "+str(datetime.now()))
print("-"*50)

try:
	for port in range(50,85):
		#AF_INET = ipv4
		#SOCK_STREAM = your port
		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		socket.setdefaulttimeout(1) #this is a float number, if not detect a port then move on after a sec.
		print(f"Checking port {port}")
		result = s.connect_ex((target,port)) #returns error indicator if equals 0 no error
		if result == 0:
			print(f"Port {port} is open")
		s.close()
except KeyboardInterrupt:
	print("\nExiting program.")
	sys.exit()
except socket.gaierror:
	print("Hostname could not be resolved.")
	sys.exit()
except socket.error:
	print("Couldn't connect to server.")
	sys.exit()
