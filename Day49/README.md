# Networks in Devops
## Introduction
Networking is a crucial part of DevOps, ensuring seamless communication between services, containers, and cloud environments. 

Fundamental networking concepts essential for DevOps
----

## 1. **Networking Basics**
- **What is Networking?**
  - Networking connects devices to enable data exchange.
- **OSI Model**
  - Layered architecture for communication:
    1. Physical
    2. Data Link
    3. Network
    4. Transport
    5. Session
    6. Presentation
    7. Application
- **TCP/IP Model**
  - Simplified version of OSI:
    1. Network Interface
    2. Internet
    3. Transport
    4. Application

## 2. **IP Addressing**
- **IPv4 vs IPv6**
  - IPv4: 32-bit (e.g., 192.168.1.1)
  - IPv6: 128-bit (e.g., 2001:db8::ff00:42:8329)
- **Private vs Public IPs**
  - Private: Used within local networks (e.g., 192.168.x.x, 10.x.x.x)
  - Public: Assigned by ISPs for internet access
- **Static vs Dynamic IPs**
  - Static: Manually assigned, does not change
  - Dynamic: Assigned by DHCP, changes over time

## 3. **Subnetting**
- **What is Subnetting?**
  - Dividing a network into smaller segments for efficiency
- **Subnet Masks**
  - Example: 255.255.255.0 (/24)
- **CIDR Notation**
  - Classless Inter-Domain Routing (e.g., 192.168.1.0/24)
- **Subnet Calculation Example**
  - `192.168.1.0/24` → 256 addresses, 254 usable
  - `192.168.1.0/26` → 64 addresses, 62 usable

## 4. **Networking Commands**
- `ifconfig` / `ip a` → Show network interfaces
- `ping` → Test connectivity
- `traceroute` / `tracert` → Track packet path
- `nslookup` / `dig` → DNS lookup
- `netstat` / `ss` → Show active connections
- `tcpdump` → Packet capture

## 5. **DNS (Domain Name System)**
- **What is DNS?**
  - Resolves domain names to IPs
- **Types of DNS Records**
  - `A` (IPv4), `AAAA` (IPv6), `CNAME`, `MX`, `TXT`
- **Common DNS Tools**
  - `nslookup`, `dig`

## 6. **Ports and Protocols**
- **Common Ports**
  - 22 (SSH), 80 (HTTP), 443 (HTTPS), 3306 (MySQL)
- **Protocols**
  - TCP (Reliable, connection-oriented)
  - UDP (Faster, connectionless)

## 7. **Firewalls & Security**
- **What is a Firewall?**
  - Controls incoming/outgoing traffic
- **Linux Firewall Tools**
  - `iptables`, `ufw`
- **Security Best Practices**
  - Close unused ports
  - Enable encryption (SSL/TLS)
  - Use VPNs for secure connections

## 8. **Cloud Networking in DevOps**
- **AWS Networking**
  - VPC, Subnets, Security Groups, NACLs
- **Kubernetes Networking**
  - CNI, Services, Ingress
- **Docker Networking**
  - Bridge, Host, Overlay Networks

## Conclusion
Networking is a core skill for DevOps. Understanding IP addressing, subnetting, and security enhances system reliability and performance.
