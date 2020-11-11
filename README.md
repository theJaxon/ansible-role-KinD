# ansible-role-KinD
A role made to create a kubernetes cluster using KinD on CentOS 8.

The role installs:  
- docker-ce 
- kubectl
- KinD

* Before running the role first change username in `defaults/main.yml` into your current username.
* After docker installation the instance should be rebooted so that docker commands run without sudo as the current `user` is now added to the docker group.

To [create a new cluster](https://kind.sigs.k8s.io/docs/user/quick-start/#creating-a-cluster) use 
```bash
kind create cluster # Context name is kind by default
```
To interact with the newly created cluster use:
```bash
kubectl cluster-info --context kind-kind
```