#!/bin/sh

setscreenres='/usr/local/bin/setscreenres'

function throw() {
	echo $1
	exit -1
}

function whisper() {
	osascript -e "set Volume 1" 
	say -v whisper $1
}


function main() {
	command=$1
	case $command in 
		-h|-hi|--high)
			RES="2304 1440"
			whisper "setting resolution to high"
			;;
		-m|--medium)
			RES="1440 900"
			whisper "setting resolution to medium"
			;;
		-l|-lo|--low)
			whisper "setting resolution to low"
			RES="1152 720"
			;;
		*)
			whisper "learn to type, peasant"
			throw "Unknown argument: $command"
	esac
	$setscreenres $RES
}

main $1
