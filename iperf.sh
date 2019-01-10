#!/bin/bash

exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>log.out 2>&1

echo `date '+%Y-%m-%d %H:%M:%S'`

for ((n=0;n<20;n++)); do

iperf_server=$(iperf3 -c bouygues.iperf.fr)
pit=$(echo $iperf_server | grep -o error)
if [ "$pit" == "error" ]
then
		echo "$n- IPerf server is busy \n"
		sleep 2

else
	  echo "Speed test has been performed"
	  echo $iperf_server
	  exit 0
fi 
done

