---
title: Denial of Service
date: 2023-07-30 20:42:05
categories: [Network Security]
tags: [Cyber Security]
render_with_liquid: false
---

## Denial of Service

Denial of Service (DoS) is a type of cyber attack aimed at disrupting the normal functioning of a target system, network, or service by overwhelming it with an excessive amount of traffic, requests, or data. The primary objective of a DoS attack is to make the target **resource unavailable to its legitimate users**, causing service interruptions, slowdowns, or complete unavailability.

### Type

There are various types of DoS attacks, each exploiting different vulnerabilities or weaknesses in the target system. Some common DoS attack types include:

1. **Volume-based attacks**: These attacks flood the target with a large volume of traffic or data, consuming all available network bandwidth, processing power, or memory resources. Examples include UDP flood, ICMP flood, and SYN flood attacks.
2. **Protocol-based attacks**: These attacks exploit vulnerabilities in network protocols to overwhelm the target. Examples include ICMP echo request (Ping) flood attacks or DNS amplification attacks.
3. **Application layer attacks**: Also known as Layer 7 attacks, these target specific applications or services. Attackers send legitimate-looking requests that require significant processing resources, exhausting server capacity. Examples include HTTP flood attacks or slow POST attacks.
4. **Distributed Denial of Service (DDoS)**: DDoS attacks involve multiple compromised devices (botnets) to launch a coordinated attack on the target, making it harder to defend against due to the distributed nature of the attack.
5. **Resource depletion attacks**: These attacks aim to exhaust specific resources of a target, such as TCP connections, server threads, or database connections.

### Impact

The impact of a successful DoS attack can be severe, leading to loss of revenue, customer trust, and brand reputation. It can also be used as a diversionary tactic to distract security teams while other more significant attacks or intrusions take place.

### Mitigation

To defend against DoS attacks, organizations implement various mitigation techniques such as rate limiting, traffic filtering, load balancing, and the use of specialized DoS protection appliances or services. Network administrators and security teams continuously monitor for unusual spikes in traffic or suspicious patterns to detect and respond to potential DoS attacks promptly.

## Distributed Denial of Service (DDoS)

Distributed Denial of Service (DDoS) is an advanced and more powerful form of Denial of Service (DoS) attack. In a DDoS attack, multiple compromised computers, known as botnets or zombies, are used to flood the target system, network, or service with a massive amount of traffic or requests simultaneously. The use of a large number of distributed sources makes DDoS attacks more potent and difficult to defend against compared to traditional DoS attacks.

![DDoS](/assets/img/Network%20Security/ddos.png)
<center> DDoS </center>

### Type

**Amplification Attack**: Amplification attacks are a specific technique used in DDoS attacks to magnify the volume of traffic directed at the target. The attacker exploits certain vulnerabilities or misconfigurations in third-party servers or services to generate larger responses than the initial request.

Method:
* **Memcache Attack**: Exploits vulnerable Memcached servers to amplify the DDoS attack. Memcached is an open-source distributed memory caching system that stores data in memory to improve database performance. However, if left unsecured and exposed to the internet, Memcached servers can be abused to respond with large UDP packets to spoofed requests. This allows attackers to magnify the volume of their attack traffic, overwhelming the target's network.
* **NTP Amplification**: NTP (Network Time Protocol) amplification attacks exploit open NTP servers to amplify the attack traffic. NTP servers are used to synchronize time between devices on a network. Attackers send small NTP queries to vulnerable servers, which then respond with larger NTP packets to the target, increasing the volume of the attack traffic.
* **DNS Amplification**: DNS amplification attacks use open DNS resolvers to amplify the attack traffic. The attacker sends small DNS queries with spoofed source IP addresses to open DNS resolvers. The resolvers, in turn, respond with larger DNS responses to the target, causing an amplification of the attack traffic.
* **SSDP Attack**: SSDP (Simple Service Discovery Protocol) amplification attacks target vulnerable SSDP devices, such as home routers and other Internet of Things (IoT) devices. The attacker sends small SSDP queries to these devices, which then respond with larger SSDP responses, amplifying the attack traffic.
* **QUIC Amplification**: QUIC (Quick UDP Internet Connections) amplification attacks exploit the QUIC protocol, a UDP-based transport protocol developed by Google. Attackers send small QUIC packets to servers, and the servers respond with larger QUIC packets, amplifying the attack traffic.

**Flooding Attack**:Flooding attacks are a type of cyber attack that aims to overwhelm a target system or network by sending a large volume of traffic, messages, or requests, thereby exhausting its resources and causing denial of service for legitimate users.

Method:
* **DNS Flood**: Floods the target's DNS servers with a large number of DNS queries or requests, overwhelming the DNS infrastructure and causing it to become unresponsive or slow in responding to legitimate DNS queries. The goal of the attack is to exhaust the DNS server's resources, such as its processing power, memory, and network bandwidth, resulting in a denial of service for legitimate users and disrupting the target's online services. 
* **HTTP Flood**: Sends a large number of HTTP requests to a web server, overwhelming its processing capacity and causing the server to become unresponsive to legitimate users.
* **SYN Flood**: SYN flood attacks target the TCP three-way handshake process. The attacker sends a large number of SYN (synchronize) packets to the target, but does not complete the handshake by sending the final ACK (acknowledge) packet. This leaves the target's resources tied up, as it waits for the final ACK that never arrives, leading to a denial of service.
* **ICMP Flood**: Involve sending a large number of ICMP (Internet Control Message Protocol) echo request packets (ping) to the target, consuming its resources and affecting network performance.
* **UDP Flood**: Sends a large number of User Datagram Protocol (UDP) packets to the target, often with spoofed source IP addresses. Since UDP is a connectionless protocol, the target does not have to respond to each packet, making it easier for attackers to generate a high volume of traffic.

## Distributed Reflection Denial of Service (DRDoS)

Distributed Reflection Denial of Service (DRDoS) is a type of cyber attack in which an attacker leverages the principles of reflection and amplification to overwhelm a target's network resources and disrupt its services. DRDoS attacks are a variation of Distributed Denial of Service (DDoS) attacks.

![DRDoS](/assets/img/Network%20Security/drdos.png)
<center> DRDoS attack </center>

1. Reflection: The attacker sends forged requests to vulnerable third-party servers on the internet, typically using protocols like DNS (Domain Name System), NTP (Network Time Protocol), SSDP (Simple Service Discovery Protocol), SNMP (Simple Network Management Protocol), or others. These requests are designed to have a larger response size than the initial request, creating amplification of traffic.
2. Amplification: The vulnerable third-party servers respond to the forged requests, generating larger responses that are sent back to the target's IP address. The amplification effect occurs because the response data is significantly larger than the initial request, effectively magnifying the volume of traffic directed at the target.
3. Target: The target receives a flood of large response packets from multiple sources, overwhelming its network infrastructure and consuming its resources, such as bandwidth, CPU, and memory. As a result, the target's legitimate traffic may be unable to reach its destination, leading to denial of service for legitimate users.

### Impact

DRDoS attacks are dangerous because they allow attackers to generate a massive volume of traffic without directly using their own resources. By exploiting the reflection and amplification vulnerabilities in third-party servers, the attacker can cause significant disruption to the target's services while concealing their identity behind the reflections.

### Mitigation
To defend against DRDoS attacks, organizations can implement various measures, such as:

- Employing traffic filtering and rate limiting to mitigate the impact of reflected traffic.
- Configuring and hardening third-party servers to prevent them from being used as amplification sources.
- Implementing anti-spoofing mechanisms to prevent attackers from using forged IP addresses in their requests.
- Employing a DDoS protection service or firewall to detect and mitigate malicious traffic.