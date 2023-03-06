kn service delete baseline
kn service create baseline --image docker.io/mrzleo/baseline-cfork
echo "waiting for pod to be deleted"
# sleep 10m
date +%s%3N>>baselog.txt && kn service update baseline --scale-min 1
set -l POD_ID $(sudo crictl ps | rg user-container | awk '{print $1}')
sudo crictl exec $POD_ID cat log.txt >> baselog.txt
echo "\n" >> baselog.txt
