date +%s%3N>>baselog_10_new_2.txt && kubectl apply -f test_baseline.yaml
echo "waiting for pod to be created"
sleep 10m
set -l POD_ID $(sudo crictl ps | rg user-container | head -n 1 | awk '{ print$1 }')
sudo crictl exec $POD_ID cat log.txt >> baselog_10_new_2.txt
echo \n >> baselog_10_new_2.txt
kn service delete baseline
