brew cask install minikube
minikube start --vm-driver=hyperkit
kubectl get po -A
# for better performance increase from default 2GB ram to 4GB ram:
# minikube config set memory 4096

# check client version
kubectl version
# check status (scheduler, controller, etcd-0)
kubectl get componentstatus
# get all nodes in a cluster
kubectl get nodes
# describe node
kubectl describe nodes minikube