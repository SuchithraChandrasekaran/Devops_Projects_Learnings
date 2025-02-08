# Networking in DevOps

Networking is crucial in DevOps for setting up CI/CD pipelines, container orchestration, and cloud deployments. This document covers key networking concepts relevant to DevOps.

## Networking in Kubernetes

### Service Discovery
- **ClusterIP**: Exposes services internally within the cluster.
- **NodePort**: Exposes services on each node's IP at a static port.
- **LoadBalancer**: Provisions a cloud provider's load balancer to expose services externally.

### Container Network Interface (CNI)
- **Calico**: Provides networking and network security for containers.
- **Flannel**: A simple overlay network for Kubernetes.

## Cloud Networking

### AWS
- **VPC (Virtual Private Cloud)**: Isolated network within AWS.
- **Subnets**: Logical subdivisions of a VPC.
- **Security Groups**: Controls inbound and outbound traffic.

### Azure
- **Virtual Network (VNet)**: Azure's equivalent of AWS VPC for network isolation.

## Infrastructure as Code (IaC) for Networking

### Terraform
- Used for provisioning cloud networking components such as VPCs, subnets, and security groups.

### Ansible
- Automates network configurations and deployments.

## Load Balancing & Reverse Proxy
- **Nginx**: Web server that also works as a reverse proxy.
- **HAProxy**: Open-source load balancer.
- **AWS ALB/ELB**: AWS-managed load balancers for distributing traffic.

## Security & Monitoring

### Security
- **Firewalls**: Protects networks by filtering traffic.
- **VPNs**: Securely connects remote networks.
- **SSH Tunnels**: Encrypts connections between client and server.

### Monitoring
- **Prometheus + Grafana**: Used for network monitoring and visualization.
