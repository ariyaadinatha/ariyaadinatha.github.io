---
title: Introduction to Network
date: 2023-07-27 15:42:37
categories: [Intro to Security, Network Security]
tags: [Network]
render_with_liquid: false
---

A computer network is a collection of interconnected devices that can communicate and share resources with each other. These devices can include computers, servers, routers, switches, printers, and other networking equipment. The primary purpose of a computer network is to facilitate data communication, resource sharing, and collaboration among the connected devices.

## IP Address

IP (Internet Protocol) address is a unique numerical label assigned to each device connected to a computer network that uses the Internet Protocol for communication. IP addresses serve as a way to identify and locate devices on a network and enable data transmission between them. They play a crucial role in routing data packets across the internet and local networks.

Types of IP Addresses:

### IPv4 (Internet Protocol version 4)

IPv4 addresses are 32-bit binary numbers, usually represented in a human-readable format as four decimal numbers separated by periods (e.g., 192.168.0.1). Each decimal number represents an octet, which is a group of 8 bits. IPv4 addresses provide approximately 4.3 billion unique addresses.

![IPv4](/assets/img/Network%20Security/ipv4.png)
<center> IPv4 </center>

### IPv6 (Internet Protocol version 6)

IPv6 addresses are 128-bit binary numbers, represented in a hexadecimal format separated by colons (e.g., 2001:0db8:85a3:0000:0000:8a2e:0370:7334). IPv6 was introduced to overcome the limitations of IPv4 and provides an enormous number of unique addresses, allowing for the future growth of the internet.

## OSI Layer

The OSI (Open Systems Interconnection) model is a conceptual framework that standardizes the functions of a telecommunication or computing system into seven distinct layers. The model was developed by the International Organization for Standardization (ISO) to ensure that different systems can communicate and interoperate with each other. Each layer in the OSI model has specific functions and interacts with the adjacent layers to facilitate data communication. Here's an overview of the seven layers of the OSI model:

![IPv4](/assets/img/Network%20Security/osi%20layer.png)
<center> OSI Layer encapsulation and decapsulation process </center>

## L7 Application Layer

Interacts directly with end-user applications. Provides network services directly to user applications.

Protocol used:
* HTTP
* FTP
* SMTP
* DNS
* DHCP

## L6 Presentation Layer

Responsible for data translation, encryption, compression. Ensure data exchanged between application can be understood by both sides.

## L5 Session Layer

Establishes, maintains, and terminates sessions between applications running on different devices. Handles session synchronization and checkpointing to support recovery in case of failures.

## L4 Transport Layer

Provides end-to-end communication between devices. It ensures reliable data delivery, error detection, and flow control. Breaking data into chunks (segments).

Protocol used:

### TCP

TCP (Transmission Control Protocol) is used for communication between devices on a network. TCP provides reliable, connection-oriented communication, making it suitable for applications that require **data delivery without loss or corruption**.

Characteristics and features of TCP:

**Connection-Oriented**: TCP establishes a connection between two devices before data transmission. This connection is a virtual circuit that ensures the reliable delivery of data. Once the connection is established, data can be sent bidirectionally.

**Reliable Data Transfer**: TCP guarantees reliable data delivery by using a combination of sequencing, acknowledgment, and retransmission mechanisms. When a device receives data, it acknowledges receipt back to the sender. If the sender does not receive an acknowledgment within a specified time, it retransmits the data.
   
**Flow Control**: TCP implements flow control mechanisms to prevent the receiver from being overwhelmed by data sent by the sender. It uses a sliding window approach, allowing the receiver to control the flow of data it can handle at a given time.
   
**Congestion Control**: TCP includes congestion control mechanisms to prevent network congestion and ensure fair sharing of network resources. It dynamically adjusts its data transmission rate based on the network's congestion state.

**Full Duplex Communication**: TCP enables full-duplex communication, allowing data to be sent and received simultaneously between two devices.
   
**Header Information**: TCP adds a header to each data packet that includes information such as source and destination port numbers, sequence numbers, acknowledgment numbers, checksum, and other control flags.
   
**Port Numbers**: TCP uses port numbers to identify specific applications or services running on a device. The combination of IP address and port number uniquely identifies a specific network application.

**Three-Way Handshake**: TCP uses a three-way handshake (SYN, SYN-ACK, ACK) to establish a connection between the sender and receiver before data transmission begins.

![Three Way Handshake](/assets/img/Network%20Security/three%20way%20handshake.png)
<center> Three Way Handshake </center>

**Connection Termination**: TCP employs a four-way handshake (FIN, ACK, FIN, ACK) to gracefully terminate a connection between the sender and receiver.

![Four Way Handshake](/assets/img/Network%20Security/four%20way%20handshake.png)
<center> Four Way Handshake </center>

### UDP

UDP (User Datagram Protocol) is a connectionless and unreliable protocol, meaning it does not establish a virtual circuit before data transmission and **does not guarantee** the reliable delivery of data.

Characteristics and features of UDP:

**Connectionless**: UDP does not establish a connection before sending data. Each UDP datagram (packet) is treated as an independent unit of data and is sent without any acknowledgment or confirmation of receipt.

**Unreliable Data Delivery**: Unlike TCP, UDP does not provide mechanisms for sequencing, acknowledgment, or retransmission of data. This means that UDP does not guarantee that data will be delivered, nor does it guarantee the order of delivery.

**Low Overhead**: Due to its simplicity, UDP has lower overhead compared to TCP. It does not require the establishment and teardown of connections or the maintenance of connection state information.

**No Flow Control**: UDP does not implement flow control mechanisms, which can result in the receiver being overwhelmed if data is sent too quickly.

**No Congestion Control**: UDP does not have congestion control mechanisms, which means that it does not dynamically adjust its data transmission rate based on network congestion.

**Datagram Structure**: Each UDP datagram includes a header containing source and destination port numbers and a checksum for error detection.

**Port Numbers**: Similar to TCP, UDP uses port numbers to identify specific applications or services running on a device.

**Broadcast and Multicast Support**: UDP supports broadcast and multicast communication, allowing data to be sent to multiple recipients simultaneously.


## L3 Network Layer

Routing data transfer between different networks. Handles logical addressing and packet forwarding, enabling data to be sent from the source device to the destination device across multiple networks. IP is the most common protocol used.

## L2 Datalink Layer

Provides reliable point-to-point **communication** between devices on the **same network** segment.

Divided into two sublayers: 
* **Logical Link Control** (LLC) handles flow control, error checking, and framing of data.

* **Media Access Control** (MAC) responsible for addressing devices on the network using MAC addresses and controlling access to the physical transmission medium.

Protocol used:
* ARP

## L1 Physical Layer

Responsible for converting digital data into electrical/optical signals for transmission and vice versa. Deals with the physical transmission of data over the physical medium, such as copper cables, fiber-optic cables, or wireless channels.
