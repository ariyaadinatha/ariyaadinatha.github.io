---
title: Information Gathering
date: 2024-10-17 21:37
categories:
  - Penetration Testing
tags:
  - Security
  - Offensive
  - Website
  - OSINT
render_with_liquid: false
---
## Overview
Information gathering is an essential part of any security assessment. This is the phase in which we gather all available information about the company, its employees and infrastructure, and how they are organized.

All the steps we take to exploit the vulnerabilities are based on the information we enumerate about our targets. This phase can be considered the cornerstone of any penetration test. We can obtain the necessary information relevant to us in many different ways. However, we can divide them into the following categories:

- Open-Source Intelligence
- Infrastructure Enumeration
- Service Enumeration
- Host Enumeration

## Open Source Intelligence
`Open Source Intelligence` (`OSINT`) is the process of gathering publicly available information about a target company or individuals to identify events, dependencies, and connections. It leverages freely accessible sources to uncover potentially security-relevant data. Often, individuals unknowingly share sensitive information that can be exploited.

Sensitive details like passwords, hashes, keys, and tokens can sometimes be discovered within minutes, particularly in improperly configured repositories on platforms like GitHub. If such information is found, the Incident Handling and Report section of the Rules of Engagement (RoE) should outline how to report these critical security vulnerabilities. Publicly exposed passwords or SSH keys represent significant security risks if they have not been changed or removed, and clients' administrators must verify this before further testing proceeds.
## Infrastructure Enumeration
Infrastructure enumeration involves mapping a company's internet and intranet presence using OSINT and active scans. Services like DNS help identify servers (e.g., name, mail, web, cloud instances) and their IP addresses. This information is compared to the test scope to ensure all components are included.

During this phase, security measures such as firewalls are also identified. This helps in planning `evasive testing` by understanding which techniques might trigger alarms and how to avoid them.

Whether external or internal, enumeration provides a clear view of the infrastructure. Internal network enumeration can reveal potential targets for attacks like Password Spraying, where one password is used to attempt authentication across multiple usernames.
## Service Enumeration
Service enumeration involves identifying and analyzing network services on a host or server to understand their version, functionality, and potential vulnerabilities. By determining the purpose and version of a service, logical conclusions can be made regarding potential attack vectors.

Older versions of services often contain known vulnerabilities. Many administrators hesitate to update functioning applications due to fear of disrupting the infrastructure, leading to security risks being left unaddressed. This makes outdated services prime targets for exploitation.
## Host Enumeration
Host enumeration involves thoroughly examining each host or server listed in the scoping document to identify its operating system, services, and versions. This process includes both active scans and OSINT methods to understand how each host is configured.

Older, unsupported hosts and services can pose risks due to unpatched vulnerabilities. Internal host enumeration, in particular, may reveal services that aren’t externally accessible and are often neglected by administrators, leading to misconfigurations.

During this phase, we determine the role of each host or server, its network connections, and services, including the ports they use. After successful exploitation, internal host enumeration continues by searching for sensitive files, local services, and information stored on the host, a critical step for privilege escalation in the Post-Exploitation phase.
## Pillaging
Pillaging occurs in the Post-Exploitation phase, where sensitive data, such as employee names and customer information, is collected from the exploited host. This step only takes place after successfully exploiting the target and gaining access.

The data gathered depends on the host’s purpose, network position, and the security measures in place. Information obtained through pillaging can reveal the potential impact of an attack on the client and assist in escalating privileges or moving laterally within the network for further exploitation.