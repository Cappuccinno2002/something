#!/bin/bash

echo -e " note : before runing it -
       after { ./script.sh } give folder path which you have to zip 
       and second path of backups folder where you want to backup it 
       Dont worry it will create backups folder if not exist
       
       there should zero zip files before running this script
       \n\n";

 folder_path=$1;
 dest_path=$2
 #echo ${folder_path};


if [ "$folder_path" = "" ]; 
 then
	 echo "Exiting the script";
	 exit;
 else 
	echo "argument is Given";
 fi

 <<comment
                        |   #echo "$(basename "$folder_path")";
                        |   
both are same ->	|   
will give same output   |   D_name="${folder_path##*/}";
                	|
comment

			Directory_N=$(basename "$folder_path");
#echo "$Directory_N";

#Folder_create=$(mkdir backups/);

if ls -d */ | grep -i "backups/";
then 
	echo "backup folder exist";
else 
	mkdir backups/
fi


 Todays_date=$(date +%y-%m-%d);
echo "$Todays_date";

 if ls -d */ | grep -i "$Directory_N/" ;
 then 
	 echo "$Directory_N Folder exist";
	 zip -r $Directory_N$Todays_date.zip $Directory_N; 
 else 
	echo "Folder doesnt exist";
        	
 fi
 




zip_folder=$(ls *.zip);
echo "$zip_folder";


mv $zip_folder $dest_path;  

 #echo "$(date +%y-%m==-%d) Project Zip script"; 
