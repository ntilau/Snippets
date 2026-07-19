if=$1
mac=$2
a=${mac//:}
sudo ifconfig $if ether ${a:0:2}:${a:2:2}:${a:4:2}:${a:6:2}:${a:8:2}:${a:10:2}
sudo ifconfig $if down
sudo ifconfig $if up
