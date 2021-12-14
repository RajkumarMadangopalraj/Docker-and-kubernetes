Using the script we can install multinode kubeadm cluster ONLY in CENTOS 7.

Master Node Setup

Step1: Login to the server and become a root user.

Step2: Git clone this repository
git clone https://github.com/RajkumarMadangopalraj/Docker-and-kubernetes.git

Step3: Navigate to the folder K8S_Cluster

Step4: Run the disable.sh script
Note: This will disable firewall and selinux and it will reboot the server

Step5: Run the install.sh script to install all the required packages.

Step6: Run command "kubeadm init" to initialize the kubeadm. 
Once the command executed successfully in the end it will give you a output like below, capture it since it will bee useful to join a worker node

kubeadm join 10.128.0.15:6443 --token 6qfjbq.kebpvsgetjp7zins  --discovery-token-ca-cert-hash 

Step7: Run kubeadm_configure.sh to setup configuration related to kubeadm

Step8: Run setupnetwork.sh script to set up the network

Step9: Run below command and verify the status of the node.
#kubectl get nodes

Worker Node:

Step1: Login to the server and become and root user.

Step2: Git clone this repository
git clone https://github.com/RajkumarMadangopalraj/Docker-and-kubernetes.git

Step3: Navigate to the folder K8S_Cluster

Step4: Run the disable.sh script
Note: This will disable firewall and selinux and it will reboot the server

Step5: Run the  install.sh script to install all the required packages.

Step6: You need to copy and paste the "kubeadm join" command which you captured in "Step6 of Master Node"

Step7: Login to masternode and run below command and confirm both the nodes are connected togather.
#kubectl get nodes