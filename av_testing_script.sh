#!/bin/bash

echoo The test is starting >> /root/four_test/data_sameed_test

echo "Time: $(date)" >> /root/four_test/data_sameed_test
start=$SECONDS

#d=$(curl -so /dev/null -w '%{speed_download}\n' https://download.fedoraproject.org/pub/fedora/linux/releases/29/Server/x86_64/iso/Fedora-Server-dvd-x86_64-29-1.2.iso)
d=$(curl -so /dev/null -w '%{speed_download}\n' http://ftp.halifax.rwth-aachen.de/ubuntu-releases/18.10/ubuntu-18.10-desktop-amd64.iso)
duration=$(( SECONDS - start ))
echo data in kBs $d >> /root/four_test/data_sameed_test
echo The duration is $duration >> /root/four_test/data_sameed_test
echo '' >> /root/four_test/data_sameed_test
echo -------------------CDN download ends------------------------- >> /root/four_test/data_sameed_test

##################################### Perform speeed test via speed test #####################################

echo -------------------speed test start---------------------------- >> /root/four_test/data_sameed_test
echo '' >> /root/four_test/data_sameed_test
sudo apt-get install python
apt-get -y install wget
wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
chmod +x speedtest-cli
wget http://www.speedtest.net/speedtest-servers.php
./speedtest-cli >> data_sameed_test
echo '' >> /root/four_test/data_sameed_test
echo -------------------speed test End----------------------------- >> /root/four_test/data_sameed_test

################################### Perform Fast speed test #################################################

echo -------------------fast speed test START----------------------- >> /root/four_test/data_sameed_test
echo '' >> /root/four_test/data_sameed_test

snap install fast
fast >> /root/four_test/data_sameed_test
echo -------------------fast speed test END------------------------- >> /root/four_test/data_sameed_test
echo '' >> /root/four_test/data_sameed_test

#################################### Iperf test ##########################################################

echo -------------------iperf test start------------------------------ >> /root/four_test/data_sameed_test
echo '' >> /root/four_test/data_sameed_test

apt install iperf3
iperf3 -c iperf-de-berlin-01.pointtoserver.com >> /root/four_test/data_sameed_test

echo ------------------iperf test END---------------------------------- >> /root/four_test/data_sameed_test
echo '' >> /root/four_test/data_sameed_test


echo *********************----------################## Activity to speed test is done########################------****************************** >> /root/four_test/data_sameed_test
