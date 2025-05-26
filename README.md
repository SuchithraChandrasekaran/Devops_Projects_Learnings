## Complete DevOps Flow with Tool Mapping
```
──────────────────────────────────────────────────────────────────────────────
PLAN & CODE
──────────────────────────────────────────────────────────────────────────────
  Developers write code & infra-as-code
  - Git (GitHub)                            ← Source Code Management
  - Shell Scripting                         ← Automation scripts
  - Terraform                               ← Provisioning (IaC)
  
──────────────────────────────────────────────────────────────────────────────
BUILD & TEST
──────────────────────────────────────────────────────────────────────────────
  - Jenkins                                 ← CI tools
  - Shell Scripts / Python Scripts          ← Build tasks, automation
  - Dockerfile                              ← Containerizing applications
  - Unit & Integration Tests                ← Validate code

──────────────────────────────────────────────────────────────────────────────
RELEASE & DEPLOY
──────────────────────────────────────────────────────────────────────────────
  - Docker                                  ← Container runtime
  - Docker Compose                          ← Local multi-container setup
  - Kubernetes                              ← Container orchestration
  - Helm                                    ← Kubernetes package manager
  - Jenkins + Ansible                       ← Automated deployment
  - AWS (EC2, EKS, ECS, S3, RDS, etc.)      ← Cloud infrastructure

──────────────────────────────────────────────────────────────────────────────
CONFIGURATION MANAGEMENT
──────────────────────────────────────────────────────────────────────────────
  - Ansible                                 ← Post-provision config
  - Shell scripting                         ← Small server tasks
  - UFW / iptables                          ← Server firewalls
  - fail2ban / SSH keys                     ← Security hardening

──────────────────────────────────────────────────────────────────────────────
MONITORING & LOGGING
──────────────────────────────────────────────────────────────────────────────
  - Prometheus                              ← Metrics collection
  - Grafana                                 ← Visualization dashboards
  - ELK Stack (Elasticsearch, Logstash, Kibana) ← Logging
  - AWS CloudWatch                          ← Cloud-native monitoring

──────────────────────────────────────────────────────────────────────────────
SECURITY & NETWORKING
──────────────────────────────────────────────────────────────────────────────
  - VPC, Subnets, Security Groups (AWS)     ← Cloud Networking
  - SSL/TLS, HTTPS, VPNs                    ← Secure communication
  - IAM (Identity and Access Management)    ← Access control
  - Secrets Manager / HashiCorp Vault       ← Secrets management
  - Network Policies (K8s)                  ← Pod-level security

──────────────────────────────────────────────────────────────────────────────
 DATABASES
──────────────────────────────────────────────────────────────────────────────
  - MySQL, PostgreSQL, MongoDB              ← Relational & NoSQL DBs
  - AWS RDS, DynamoDB                       ← Managed DBs in cloud
  - Ansible / Terraform                     ← Provision + Configure DBs

──────────────────────────────────────────────────────────────────────────────
```

## Reference

This Repo contain projects as a part of hands-on DevOps learning, guided by the DevOps Roadmap

[https://roadmap.sh/projects/](https://roadmap.sh/devops/projects)

&

https://github.com/LondheShubham153/90DaysOfDevOps.git

##  Important: Stop the EC2 Instance to Avoid Charges

After the testing or deployment is done **remember to stop the EC2 instance** to avoid incurring ongoing charges from AWS

