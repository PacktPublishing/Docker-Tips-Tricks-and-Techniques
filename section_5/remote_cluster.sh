# start simple hello docker app using kubernetes 
# this image is used: https://console.cloud.google.com/gcr/images/google-samples/GLOBAL/node-hello?gcrImageListsize=30
kubectl run node-hello1 --image=gcr.io/google-samples/node-hello:1.0 --port=8083
# expose image through K8 proxy
kubectl proxy --port=8083
# visit exposed api
curl http://localhost:8083/api
# see all pods on K8 node
curl http://localhost:8083/api/v1/namespaces/default/pods