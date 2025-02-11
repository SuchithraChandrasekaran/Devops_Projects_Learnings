# Step 1: Understand Kubernetes Basics

## What is Kubernetes? 

It’s an orchestration tool for managing containerized applications.

## Key Concepts:

  Pods → Smallest deployable unit (container inside)

  Nodes → Machines where workloads run

  Deployments → Manage pod scaling & updates

  Services → Expose applications inside/outside the cluster

# Step 2: Set Up Kubernetes Locally
  
  Use Minikube (for a single-node cluster) or Kind (Kubernetes in Docker).

Minikube Setup:

# Install Minikube

    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-windows-amd64.exe
    mv minikube-windows-amd64.exe minikube.exe
    ./minikube.exe start

## Check the cluster:

  kubectl get nodes
 
## Kind Setup:

  kind create cluster
  kubectl get nodes

# Step 3: Learn kubectl Commands

  kubectl get pods         # List running pods  
  kubectl get services     # List running services  
  kubectl apply -f myfile.yaml  # Deploy using YAML  
  kubectl delete pod mypod  # Delete a pod  

# Step 4: Deploy App

  Create a deployment.yaml


    apiVersion: apps/v1
    kind: Deployment
    metadata:
      name: my-app
    spec:
      replicas: 2
      selector:
        matchLabels:
          app: my-app
      template:
        metadata:
          labels:
            app: my-app
        spec:
          containers:
          - name: my-app
            image: nginx
            ports:
            - containerPort: 80

Deploy it:

  kubectl apply -f deployment.yaml
  kubectl get pods

# Step 5: Expose Your App

## Expose it via a service:

  kubectl expose deployment my-app --type=NodePort --port=80
  
## Find the URL:

  minikube service my-app --url

# Step 6: Explore Helm & YAML Best Practices

  Helm → Package manager for Kubernetes
