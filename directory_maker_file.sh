#!/bin/bash




make_directory () 
{
 read -p "\nName your directory" direc_name
  mkdir $direc_name

}



main () 
{

	echo "the make_directory function is called"
	make_directory
}



main 
