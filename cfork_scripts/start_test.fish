kn service delete multi-container
sudo systemctl restart crio
kubectl apply -f test_knative.yaml
# date +%s%3N && kn service update multi-container --scale-min 1
