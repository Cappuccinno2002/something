#!/bin/bash



	echo "File Count Script"; 
	Direc_path=$1; 
	#echo "$Direc_path"; 

      
	#object_name=$(basename $Direc_path);
	#echo "$object_name";	
	
	if [ "$Direc_path" = "" ]; 
	then 
		echo "arugment not provided";
		exit 
	else 
		echo "argument provided";
		
	fi

	sleep 2 

	if [ -d "$Direc_path" ];
	then
		echo "path exist";
	         
	else  
		echo "path doesnt  exist";
		exit;
        fi		
		
	count=$(ls $Direc_path | wc -l);
	echo "total files are in the $Direc_path > $count";
 


