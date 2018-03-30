#!/bin/bash

wget -O - "https://genomequebec.mcgill.ca/nanuqMPS/readsetList?projectId=13688&tech=HiSeq" --no-cookies --no-check-certificate --post-data 'j_username=atigano&j_password=416qyn85' | wget --no-cookies --no-check-certificate --post-data 'j_username=atigano&j_password=416qyn85' -ci - 

