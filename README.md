This project contains the basic notes about Kubernetes such as what is the reason for use it, what it is and how to use it in a development and production environment.

### Table of contents

## What is Kubernetes?

Kubernetes is a system for running many different containers over multiple machines and it is mainly used for applications that need scalability, that is, applications that need to be deployed to the cloud (Google Cloud, AWS, Azure) are more likely to be running in several machines but they need some sort of <b>orchestration</b> to know how many instances will be required, how many resources will be needed and which services should be working.

                                                     -----------
                                              ----> |   Node    |
                                             |      | Container |<---------->|  
                                             |       -----------             | 
    ----------           ---------------     |       -----------             |
    | Request  | ------> | Load balancer | ------->  |   Node    |         --------
    ----------           ---------------     |       | Container |<------>| Master |
                                             |       | Container |         --------
                                             |        -----------            |
                                             |        -----------            |
                                             |       |   Node    |           |
                                              -----> | Container |<--------->|
                                                     | Container |
                                                     | Container |
                                                      -----------

In the diagram from above, the master (Kubernetes) controls what each node does. Nodes + master make up a <b>cluster</b>.

## Objects in Kubernetes

Kubernetes works with 4 types of objects which are ReplicaController, Pods, StatefulSet and Services. All these objects have different purposes such as running containers, set up of networks, monitoring of containers and so on. 

### Pods

A Pod holds a container and it is the smallest object to deploy. 

### Deployments

When you want to configure a container you must go through a deployment and not through the Pods.

### Services

They set up the networking in a Kubernetes cluster and they are classified in ClusterIP, NodePort, LoadBalancer and Ingress routing. 

1. ClusterIP: It exposes a set of Pods to other objects in the cluster.
2. NodePort: It exposes the containers to the world.
3. LoadBalancer
4. Ingress routing: It sets the rules to get the traffic services. 


## How do we start using Kubernetes?                 

We need to install minikube which creates a virtual machine in your computer. You can use the following commands in Linux to install minikube.

First install kubectl with `curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && chmod +x kubectl && sudo cp kubectl /usr/local/bin/ && rm kubectl`

Also, make sure you have installed virtualbox:

`wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -`
 
`wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -`

`sudo apt-get update`
`sudo apt-get install virtualbox`

Then install minikube:

`curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && sudo install minikube-linux-amd64 /usr/local/bin/minikube`

Lastly, start minikube with `minikube start`

You can delete the current minikube with `minikube delete`

 


`kubectl apply -f <client-pod>.yaml`

`kubectl get pods`
`kubectl describe <object-type> <object-name>`
`kubectl delete pods <pod-name> --grace-period=0 --force`
`kubectl cluster-info`
`kubectl delete -f <name-of-file>`