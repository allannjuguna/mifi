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



	API_FILES=$(awk -F "GET " {'print $2'} | cut -d ' ' -f1 | sort | uniq | grep -i 'api')
	echo -e "\n[+] API FILES\n======================="
	echo -e "${API_FILES}\n" 
	echo -e "${API_FILES}\n" > api.txt
done


 cat logfile.log | grep -i "192.168.8.1" | while read line ; do

	HTML_FILES=$(awk -F "GET " {'print $2'} | cut -d ' ' -f1 | sort | uniq | grep -i 'html')
	echo -e "\n[+]  HTML FILES\n======================="
	echo -e "${HTML_FILES}\n" 
	echo -e "${HTML_FILES}\n" > html.txt


done





 cat logfile.log | grep -i "192.168.8.1" | while read line ; do
	JS_FILES=$(awk -F "GET " {'print $2'} | cut -d ' ' -f1 | sort | uniq | grep -i 'js')
	echo -e "\n[+]  JS FILES\n======================="
	echo -e "${JS_FILES}\n" 
	echo -e "${JS_FILES}\n" > js.txt
done



 cat logfile.log | grep -i "192.168.8.1" | while read line ; do
	CONFIG_FILES=$(awk -F "GET " {'print $2'} | cut -d ' ' -f1 | sort | uniq | grep -i 'config')
	echo -e "\n[+]  CONFIG FILES\n======================="
	echo -e "${CONFIG_FILES}\n" 
	echo -e "${CONFIG_FILES}\n" > config.txt
done