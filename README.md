# Reddit Clone App on Kubernetes with Ingress
This project demonstrates how to deploy a Reddit clone app on Kubernetes with Ingress and expose it to the world using Minikube as the cluster.
Below is an overview of the architecture of this Reddit Clone App running on Kubernetes with Ingress.
![Architecture Diagram](https://github.com/LondheShubham153/reddit-clone-k8s-ingress/assets/71492927/e1eec5f2-1983-445b-8966-e9acfdea7f8e)

## Prerequisites
Before you begin, you should have the following tools installed on your local machine: 

- Docker
- Minikube cluster ( Running )
- kubectl
- Git

You can install Prerequisites by doing these steps. [click here & complete all steps one by one]().


## Installation
Follow these steps to install and run the Reddit clone app on your local machine:

1) Clone this repository to your local machine: `git clone https://github.com/LondheShubham153/reddit-clone-k8s-ingress.git`
2) Navigate to the project directory: `cd reddit-clone-k8s-ingress`
3) Build the Docker image for the Reddit clone app: `docker build -t reddit-clone-app .`
4) Deploy the app to Kubernetes: `kubectl apply -f deployment.yaml`
1) Deploy the Service for deployment to Kubernetes: `kubectl apply -f service.yaml`
5) Enable Ingress by using Command: `minikube addons enable ingress`
6) Expose the app as a Kubernetes service: `kubectl expose deployment reddit-deployment --type=NodePort --port=5000`
7) Create an Ingress resource: `kubectl apply -f ingress.yaml`


## Test Ingress DNS for the app:
- Test Ingress by typing this command: `curl http://domain.com/test`

## Cluster Monitoring using Prometheus & Grafana

Key Components :

- Prometheus server - Processes and stores metrics data
- Alert Manager - Sends alerts to any systems/channels
- Grafana - Visualize scraped data in UI

Pre Requisites :
- EKS Cluster is setup already
- Install Helm
- EC2 instance to access EKS cluster

Installation Steps 
```sh
sudo apt-get update
sudo apt install docker.io -y
sudo usermod -aG docker $USER && newgrp docker 
```

Edit Prometheus Service (Edit type : LoadBalancer)
```sh
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

```

Verify if service is changed to LoadBalancer and also to get the Load Balancer URL.
```sh
minikube start --driver=docker
```

Access Grafana Dashboard
```sh
sudo snap install kubectl --classic
```


For creating a dashboard to monitor the cluster:

```sh
 kubectl expose deployment reddit-deployment --type=NodePort
kubectl port-forward svc/reddit-clone-service 3000:3000 --address 0.0.0.0
```


### Images For reference



<img width="1396" alt="image" src="https://user-images.githubusercontent.com/110477025/227587553-7163c709-85cf-4e23-a00b-823b08758859.png">



<img width="1400" alt="image" src="https://user-images.githubusercontent.com/110477025/227587788-06ce33dd-3a09-4f36-9bbd-aff0925615ed.png">




## Contributing
If you'd like to contribute to this project, please open an issue or submit a pull request.


