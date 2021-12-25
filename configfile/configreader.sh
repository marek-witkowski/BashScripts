#!/usr/bin/env bash




configfile="configfile.cfg"



read_default_config() {



	value1=1
	value2="Default config"

}



read_default_config


[[ $configfile ]] && source "$configfile"






echo "value 1 : $value1"
echo "value 2 : $value2"


exit
