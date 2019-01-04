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
    ----------           ---------------     |      | Container |<------>| Master |
                                           |      | Container |         --------
                                           |       -----------             |
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

They set up the networking in a Kubernetes cluster and they are classified in ClusterIP, NodePort, LoadBalancer and the Ingress. 

1. ClusterIP: It exposes a set of Pods to other objects in the cluster.
2. NodePort: It exposes the containers to the world.
3. LoadBalancer
4. Ingress


## How do we start using Kubernetes?                 

We need to install minikube which creates a virtual machine in your computer 