#Network Creation
export kubever=$(kubectl version | base64 | tr -d '\n')
kubectl create -f https://docs.projectcalico.org/manifests/tigera-operator.yaml
kubectl create -f https://docs.projectcalico.org/manifests/custom-resources.yaml
#Disabling weave network plugin
#kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$kubever"
