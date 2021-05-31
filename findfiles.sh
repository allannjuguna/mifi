#! /bin/bash
# Author : xubzero
# Version : 1.0
# Notes : 
	# The logfile was obtained by running the following command
	# sudo tshark -I wlp2s0 -Y "http.request.method == "GET"" | tee logfile.log
	# wlp2s0 is the name of my wireless interface.This may vary according to your device
	# To install tshark ,run sudo apt-get install tshark -y
	# 192.168.8.1 is the ip of the mifi router

	# Am not so good at bash scripting :(


 cat logfile.log | grep -i "192.168.8.1" | while read line ; do
	echo "\n[+] API FILES\n======================="
	API_FILES=$(awk -F "GET " {'print $2'} | cut -d ' ' -f1 | sort | uniq | grep -i '/api/')
	echo "${API_FILES}\n" 
	echo "${API_FILES}\n" > api.txt
done


 cat logfile.log | grep -i "192.168.8.1" | while read line ; do
	echo "\n[+]  HTML FILES\n======================="
	HTML_FILES=$(awk -F "GET " {'print $2'} | cut -d ' ' -f1 | sort | uniq | grep -i '/html/')
	echo "${HTML_FILES}\n" 
	echo "${HTML_FILES}\n" > html.txt
done





 cat logfile.log | grep -i "192.168.8.1" | while read line ; do
	echo "\n[+]  JS FILES\n======================="
	JS_FILES=$(awk -F "GET " {'print $2'} | cut -d ' ' -f1 | sort | uniq | grep -i '/js/')
	echo "${JS_FILES}\n" 
	echo "${JS_FILES}\n" > js.txt
done



 cat logfile.log | grep -i "192.168.8.1" | while read line ; do
	echo "\n[+]  CONFIG FILES\n======================="
	CONFIG_FILES=$(awk -F "GET " {'print $2'} | cut -d ' ' -f1 | sort | uniq | grep -i '/config/')
	echo "${CONFIG_FILES}\n" 
	echo "${CONFIG_FILES}\n" > config.txt
done