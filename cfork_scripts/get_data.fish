set -l POD_ID $(sudo crictl ps | rg spin | awk '{print $1}')
sudo crictl exec $POD_ID cat log.txt
