# This is a script file for Linux terminal commands

#Pulls the dataset from that website
wget https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2019-financial-year-provisional/Download-data/annual-enterprise-survey-2019-financial-year-provisional-csv.csv

#Renames the file to data
mv annual-enterprise-survey-2019-financial-year-provisional-csv.csv data.csv

#Extracts the 2nd column of the dataset
awk -F "","" '{print $2}' data.csv > extract.txt

#Sorts and outputs the extracted column
sort extract.txt

