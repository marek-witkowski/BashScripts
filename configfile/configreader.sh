#!/usr/bin/env bash


# My configuration file.

configfile="configfile.cfg"

# 

read_default_config() {



	value1=1
	value2="Default config"

}



# Reading default values.

read_default_config

# If exist configuration file - use it!

[[ $configfile ]] && source "$configfile"


# Show final configuration values.



echo "value 1 : $value1"
echo "value 2 : $value2"


exit
