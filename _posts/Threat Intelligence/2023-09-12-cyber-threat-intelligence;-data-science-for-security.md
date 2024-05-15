---
title: Cyber Threat Intelligence; Data Science for Security
date: 2023-09-12 20:23:32
categories:
  - Threat Intelligence
  - Intro to Security
tags:
  - Cyber
  - Security
  - CTI
render_with_liquid: false
---
In this modern age, there is a quote "data is the new gold". As large amount of information generated and exchanged everyday. Just as gold requires to be processed to unlock its true value, so does data demand analysis to reveal its true value. This is where cyber threat intelligence comes. A discipline field of security that collect, process, and analyze data to understand a threat better and shift the defending methods from reactive to proactive. With the evolving nature of threats, cyber threat intelligence is required to outmaneuver cyber criminals. 
### What is Threat Intelligence?
Cyber Threat Intelligence (CTI) is a process of collecting, analyzing, and interpreting information about potential or actual cyber threats to provide actionable insights that organizations can use to understand, mitigate, and respond effectively to cyber security risks. Threat intelligence helps organizations with valuable knowledge to build effective defense mechanisms, prioritize and mitigate the risks, and change their behavior from reactive to proactive to combat the attacks.

Effectively countering cyber attacks requires a comprehensive grasp of security vulnerabilities, indicators of threats, and the methodologies employed to execute those threats (EC Council, 2023).
### Levels of CTI
Cyber threat intelligence can be categorized into several types:
#### Strategic Intelligence
Big picture covering threat trends and scope for C-level (CEO, CISO, CSO). Understanding TTP (tactic, technique, procedure) can change organization security strategy, policies, security, and IT environment configuration. 
- Describe overall hacking activity trends and techniques. 
- Establishing an organizational security strategy and direction.
#### Operational Intelligence
Attack surface analysis of internal IT environment for Kill Chain, Diamond Model, Cyber Campaign Modeling, for middle manager level. Gain intelligence on the IT environment within the organization and external threat intelligence to identify new attack points. 
- Explaining the attack process based on the MITRE ATT&CK Matrix. 
- Derive detection and response potential in the event of a real world attack
#### Tactical Intelligence
Generate Indicators with threat information and data collection. Indicators utilized by hacking groups can detect and block real world attacks. 
- Apply SIEM to IOC to detect and respond to actual attacks 
- Utilizing periodic threat hunting activities
### Why is it Important?
Threat intelligence is a critical security operation. The information that it gathers can shape policies, operations, vulnerable management, incident response, and risk analysis efforts. Another reasons why threat intelligence is important:
1. **Proactive Defense**: Allows organizations to anticipate and prepare for potential cyber threats before they materialize.
2. **Risk Mitigation**: Helps organizations identify vulnerabilities in their systems, applications, and processes. This enables them to prioritize and address these weaknesses, reducing the likelihood of successful cyber attacks.
3. **Informed Decision-Making**: Having accurate and up-to-date threat intelligence empowers decision-makers to make informed choices about cyber security investments and resource allocation
4. **Incident Response and Recovery**: Provides critical insights into the attack's origin, methods, and potential impact, enabling organizations to contain and mitigate the attack effectively.
5. **Understanding the Adversary**: Helps organizations gain insights into the motives and goals of threat actors. This understanding aids in predicting future attacks and adopting a proactive security stance.
6. **Collaboration and Sharing**: By sharing threat intelligence with other organizations, industries, and government agencies, collective defense efforts can be strengthened. Collaborative threat intelligence efforts enhance the overall cyber security posture across various sectors.
7. **Faster Response Time**: Effective threat intelligence can lead to quicker detection of breaches and minimizing potential damage.
### Driven Security Operation
1. **Inputs**: The "Inputs" phase refers to the data and information that feed into the entire cyber threat intelligence and incident response process. This includes data from various sources such as network logs, threat intelligence feeds, open-source intelligence, and internal incident data.
2. **Adversary Emulation Planning**: This phase involves strategizing and planning how to simulate the tactics, techniques, and procedures (TTPs) of potential adversaries. It aims to mimic real-world attack scenarios to test an organization's defenses and identify vulnerabilities.
3. **Attack Simulation**: In this phase, the planned adversary emulation is executed. Simulated attacks are launched against an organization's systems and networks to evaluate their resilience, response capabilities, and detection mechanisms.
4. **Hunting and Reporting**: Cyber threat hunting involves actively seeking out signs of malicious activity or potential threats that may have evaded traditional security measures. Once suspicious behavior is identified, detailed reports are generated to provide insights into the nature of the threat and recommendations for mitigation.
5. **Incident Response**: When a security incident occurs, incident response teams follow predefined procedures to contain, investigate, and mitigate the impact of the incident. This phase often involves coordination across different departments and can include legal, technical, and communication efforts.
6. **Alert Maintenance**: This phase involves managing and monitoring security alerts generated by various detection systems. Security analysts assess the alerts' credibility, prioritize them based on severity, and take appropriate actions.
### Who is the Stakeholder?
#### Information Security Team
Performing Strategic & Operational Threat Intelligence tasks
1. Strategic Security Budget Investment
* Leading investment in vulnerable infrastructure within the organization to respond to the latest real world case based hacking techniques.
2. Change Security Policy
* Changing security policies based on recommendation in the Monthly Threat Actor Intelligence Report.
* Learn the latest hacking and defense techniques utilized by hacking groups with the MITRE ATT&CK Matrix.
3. Security Awareness Training
* Conduct security awareness training for executives and employees in the organization based on actual hacking cases of hacking groups.
4. Adversary Emulation
* Security checks based on actual vulnerabilities and hacking tools used by hacker.
#### Security Operation Center
Performing Tactical Threat Intelligence Tasks
1. Detect and block threats within your organization using the indicator
* Threat detection using IP address, Domain, and file hash that the hacking group utilized.
* Use as a rule for Security Information Event Management (SIEM), a collection of logs collected by security solutions in your organization.
#### Incident Response Team
Performing Tactical Threat Intelligence Tasks
1. Investigation or occurrence of incidents
* Identifying threats using indicators that hacking groups are using.
* Recognize the progress within the organization of threats or similar threats identified using the indicator.
#### Malware & Threat Intelligence Team
Performing Tactical Threat Intelligence Tasks
1. Identical or like malware found in your organization
* Identifies malware produced by the actual hacking group with malware found in the organization.
3. Threat Hunting
* Identifying perceived threats within the organization using indicators that hacking groups utilize.
### How to Implement Cyber Threat Intelligence
According to EC Council, there are 7 golden rules for implementing a cyber threat intelligence program:
1. **Create a Plan**: Involves defining the objectives, scope, and goals of cyber threat intelligence program. Outline the target to achieve with threat intelligence, what threats being focused on, and the resources required.
2. **Know Who Needs the Intelligence**: Identify the stakeholders and teams within the organization that require threat intelligence. Includes incident response teams, security operations centers, executive management, legal, compliance, and more. Modify the intelligence to meet the specific needs of each group.
3. **Involve the Right People**: The team should include representatives from various departments such as IT, security, legal, communications, and management. Collaborative input ensures that the threat intelligence program aligns with the organization's overall objectives.
4. **Implement the Right TTP (Tactics, Techniques, Procedures)**: Select the appropriate tactics, techniques, and procedures for gathering, analyzing, and sharing threat intelligence. Involves in choosing the right data sources, tools, and methodologies to effectively identify and respond to threats.
5. **Understand the Difference Between Threat Data and Threat Intelligence**: Threat data consists of raw information collected from various sources, while threat intelligence involves analyzing and contextualizing that data to provide actionable insights. Understand the distinction to ensure the program focuses on turning data into meaningful intelligence.
6. **Integrate with the Organization's Security Technology**: Integrate threat intelligence into existing security technologies and systems, such as intrusion detection systems, firewalls, and SIEM (Security Information and Event Management) platforms.
7. **Communication**: Effective communication is key to the success of your threat intelligence program. Establish clear communication channels within the organization to share intelligence updates, threat reports, and actionable recommendations.
### Threat Intelligence Lifecycle
### Glossary
#### Data
Consists of individual facts and data collected as a basis for further analysis.
#### Information
A combination of data to answer a particular question.
#### Intelligence
Analyzes data and information to create a form for decision making.
#### Threat Intelligence
Collect and analyze information and data related to malicious intent, capabilities, and opportunities of the adversary.
1. **Threat Intelligence Platforms (TIPs)**: TIPs are central platforms that aggregate, correlate, and analyze threat data from various sources. They provide a unified view of threat information, automate workflows, and facilitate collaboration among different teams. Examples include Anomali, ThreatConnect, and ThreatQuotient.
2. **SIEM (Security Information and Event Management)**: SIEM tools collect, analyze, and correlate security events from across an organization's IT infrastructure. They help identify patterns and anomalies that could indicate potential threats. Examples include Splunk, IBM QRadar, and Elastic SIEM.
3. **Open Source Threat Intelligence Tools**: There are various open-source tools and frameworks available for threat intelligence collection and analysis, such as MISP (Malware Information Sharing Platform), TheHive, and Cortex.
4. **Threat Feeds and Intelligence Sources**: Organizations subscribe to threat intelligence feeds that provide real-time information about known threats, vulnerabilities, and malicious actors. These feeds can be integrated into security solutions to enhance detection and response capabilities.
5. **Vulnerability Management Tools**: These tools help identify, prioritize, and remediate vulnerabilities in an organization's systems and software. They play a crucial role in understanding potential attack vectors and assessing risk. Examples include Qualys, Tenable.io, and Rapid7 InsightVM.
6. **Malware Analysis Tools**: Malware analysis tools enable researchers to dissect and understand malicious code. They help determine malware behavior, capabilities, and potential impact. Examples include IDA Pro, Cuckoo Sandbox, and VirusTotal.
### Explore
#### ISACs
Information Sharing and Analysis Centers
#### ISAOs
Sharing and Analysis Organizations
### References
"Principles of Computer Security", WM. Arthur Conklin
"Cyber Threat Intelligence", EC Council https://www.eccouncil.org/cybersecurity/what-is-cyber-threat-intelligence/
"Threat Intelligence", Crowdstrike https://www.crowdstrike.com/cybersecurity-101/threat-intelligence/
"What is Cyber Threat Intelligence?", CIS https://www.cisecurity.org/insights/blog/what-is-cyber-threat-intelligence
"Cyber Threat Intelligence(CTI) - All you need to know", Xcitium https://www.xcitium.com/cyber-threat-intelligence/