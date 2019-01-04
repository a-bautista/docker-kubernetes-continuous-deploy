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

## How do we start using Kubernetes?                 

