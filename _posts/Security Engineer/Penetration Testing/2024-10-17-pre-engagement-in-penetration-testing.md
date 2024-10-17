---
title: Pre-Engagement in Penetration Testing
date: 2024-10-17 20:34
categories:
  - Penetration Testing
tags:
  - Website
  - Security
  - Offensive
  - Documentation
render_with_liquid: false
---
Pre-engagement is the stage of preparation for the actual penetration test. During this stage, many questions are asked, and some contractual agreements are made. The client informs us about what they want to be tested, and we explain in detail how to make the test as efficient as possible.
## Overview
The entire pre-engagement process consists of three essential components:

1. Scoping questionnaire  
2. Pre-engagement meeting
3. Kick-off meeting

Before any of these can be discussed in detail, a `Non-Disclosure Agreement` (`NDA`) must be signed by all parties. There are several types of NDAs:

|**Type**|**Description**|
|---|---|
|`Unilateral NDA`|This type of NDA obligates only one party to maintain confidentiality and allows the other party to share the information received with third parties.|
|`Bilateral NDA`|In this type, both parties are obligated to keep the resulting and acquired information confidential. This is the most common type of NDA that protects the work of penetration testers.|
|`Multilateral NDA`|Multilateral NDA is a commitment to confidentiality by more than two parties. If we conduct a penetration test for a cooperative network, all parties responsible and involved must sign this document
This stage also requires the preparation of several documents before a penetration test can be conducted that must be signed by our client and us so that the declaration of consent can also be presented in written form if required. Otherwise the penetration test could breach the [Computer Misuse Act](https://www.legislation.gov.uk/ukpga/1990/18/contents). These documents include, but are not limited to:

| **Document**                                                         | **Timing for Creation**                             |
| -------------------------------------------------------------------- | --------------------------------------------------- |
| `1. Non-Disclosure Agreement` (`NDA`)                                | `After` Initial Contact                             |
| `2. Scoping Questionnaire`                                           | `Before` the Pre-Engagement Meeting                 |
| `3. Scoping Document`                                                | `During` the Pre-Engagement Meeting                 |
| `4. Penetration Testing Proposal` (`Contract/Scope of Work` (`SoW`)) | `During` the Pre-engagement Meeting                 |
| `5. Rules of Engagement` (`RoE`)                                     | `Before` the Kick-Off Meeting                       |
| `6. Contractors Agreement` (Physical Assessments)                    | `Before` the Kick-Off Meeting                       |
| `7. Reports`                                                         | `During` and `after` the conducted Penetration Test |
## Scoping Questionnaire
After initial contact is made with the client, we typically send them a `Scoping Questionnaire` to better understand the services they are seeking. This scoping questionnaire should clearly explain our services and may typically ask them to choose one or more from the following list:

☐ Internal Vulnerability Assessment	
☐ External Vulnerability Assessment
☐ Internal Penetration Test	
☐ External Penetration Test
☐ Wireless Security Assessment	
☐ Application Security Assessment
☐ Physical Security Assessment	
☐ Social Engineering Assessment
☐ Red Team Assessment	
☐ Web Application Security Assessment

Aside from the assessment type, client name, address, and key personnel contact information, some other critical pieces of information include:

- How many expected live hosts?
- How many IPs/CIDR ranges in scope?
- How many Domains/Subdomains are in scope?
- How many wireless SSIDs in scope?
- How many web/mobile applications? If testing is authenticated, how many roles (standard user, admin, etc.)?
- For a phishing assessment, how many users will be targeted? Will the client provide a list, or we will be required to gather this list via OSINT?
- If the client is requesting a Physical Assessment, how many locations? If multiple sites are in-scope, are they geographically dispersed?
- What is the objective of the Red Team Assessment? Are any activities (such as phishing or physical security attacks) out of scope?
- Is a separate Active Directory Security Assessment desired?
- Will network testing be conducted from an anonymous user on the network or a standard domain user?
- Do we need to bypass Network Access Control (NAC)?

Finally, we will want to ask about information disclosure and evasiveness (if applicable to the assessment type):
- Is the Penetration Test black box (no information provided), grey box (only IP address/CIDR ranges/URLs provided), white box (detailed information provided)
- Would they like us to test from a non-evasive, hybrid-evasive (start quiet and gradually become "louder" to assess at what level the client's security personnel detect our activities), or fully evasive.

Based on the information we received from the scoping questionnaire, we create an overview and summarize all information in the `Scoping Document`.
## Pre-Engagement Meeting
Once we have an initial idea of the client's project requirements, we can move on to the `pre-engagement meeting`. This meeting discusses all relevant and essential components with the customer before the penetration test, explaining them to our customer. The information we gather during this phase, along with the data collected from the scoping questionnaire, will serve as inputs to the `Penetration Testing Proposal`, also known as the `Contract` or `Scope of Work` (`SoW`).
#### Contract - Checklist

| **Checklist**                        | **Description**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `☐ NDA`                              | Non-Disclosure Agreement (NDA) refers to a secrecy contract between the client and the contractor regarding all written or verbal information concerning an order/project. The contractor agrees to treat all confidential information brought to its attention as strictly confidential, even after the order/project is completed. Furthermore, any exceptions to confidentiality, the transferability of rights and obligations, and contractual penalties shall be stipulated in the agreement. The NDA should be signed before the kick-off meeting or at the latest during the meeting before any information is discussed in detail. |
| `☐ Goals`                            | Goals are milestones that must be achieved during the order/project. In this process, goal setting is started with the significant goals and continued with fine-grained and small ones.                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `☐ Scope`                            | The individual components to be tested are discussed and defined. These may include domains, IP ranges, individual hosts, specific accounts, security systems, etc. Our customers may expect us to find out one or the other point by ourselves. However, the legal basis for testing the individual components has the highest priority here.                                                                                                                                                                                                                                                                                              |
| `☐ Penetration Testing Type`         | When choosing the type of penetration test, we present the individual options and explain the advantages and disadvantages. Since we already know the goals and scope of our customers, we can and should also make a recommendation on what we advise and justify our recommendation accordingly. Which type is used in the end is the client's decision.                                                                                                                                                                                                                                                                                  |
| `☐ Methodologies`                    | Examples: OSSTMM, OWASP, automated and manual unauthenticated analysis of the internal and external network components, vulnerability assessments of network components and web applications, vulnerability threat vectorization, verification and exploitation, and exploit development to facilitate evasion techniques.                                                                                                                                                                                                                                                                                                                  |
| `☐ Penetration Testing Locations`    | External: Remote (via secure VPN) and/or Internal: Internal or Remote (via secure VPN)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `☐ Time Estimation`                  | For the time estimation, we need the start and the end date for the penetration test. This gives us a precise time window to perform the test and helps us plan our procedure. It is also vital to explicitly ask how time windows the individual attacks (Exploitation / Post-Exploitation / Lateral Movement) are to be carried out. These can be carried out during or outside regular working hours. When testing outside regular working hours, the focus is more on the security solutions and systems that should withstand our attacks.                                                                                             |
| `☐ Third Parties`                    | For the third parties, it must be determined via which third-party providers our customer obtains services. These can be cloud providers, ISPs, and other hosting providers. Our client must obtain written consent from these providers describing that they agree and are aware that certain parts of their service will be subject to a simulated hacking attack. It is also highly advisable to require the contractor to forward the third-party permission sent to us so that we have actual confirmation that this permission has indeed been obtained.                                                                              |
| `☐ Evasive Testing`                  | Evasive testing is the test of evading and passing security traffic and security systems in the customer's infrastructure. We look for techniques that allow us to find out information about the internal components and attack them. It depends on whether our contractor wants us to use such techniques or not.                                                                                                                                                                                                                                                                                                                         |
| `☐ Risks`                            | We must also inform our client about the risks involved in the tests and the possible consequences. Based on the risks and their potential severity, we can then set the limitations together and take certain precautions.                                                                                                                                                                                                                                                                                                                                                                                                                 |
| `☐ Scope Limitations & Restrictions` | It is also essential to determine which servers, workstations, or other network components are essential for the client's proper functioning and its customers. We will have to avoid these and must not influence them any further, as this could lead to critical technical errors that could also affect our client's customers in production.                                                                                                                                                                                                                                                                                           |
| `☐ Information Handling`             | HIPAA, PCI, HITRUST, FISMA/NIST, etc.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `☐ Contact Information`              | For the contact information, we need to create a list of each person's name, title, job title, e-mail address, phone number, office phone number, and an escalation priority order.                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `☐ Lines of Communication`           | It should also be documented which communication channels are used to exchange information between the customer and us. This may involve e-mail correspondence, telephone calls, or personal meetings.                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `☐ Reporting`                        | Apart from the report's structure, any customer-specific requirements the report should contain are also discussed. In addition, we clarify how the reporting is to take place and whether a presentation of the results is desired.                                                                                                                                                                                                                                                                                                                                                                                                        |
| `☐ Payment Terms`                    | Finally, prices and the terms of payment are explained.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |

Based on the `Contract Checklist` and the input information shared in scoping, the `Penetration Testing Proposal` (`Contract`) and the associated `Rules of Engagement` (`RoE`) are created.

#### Rules of Engagement - Checklist

| **Checklist**                               | **Contents**                                                                                          |
| ------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `☐ Introduction`                            | Description of this document.                                                                         |
| `☐ Contractor`                              | Company name, contractor full name, job title.                                                        |
| `☐ Penetration Testers`                     | Company name, pentesters full name.                                                                   |
| `☐ Contact Information`                     | Mailing addresses, e-mail addresses, and phone numbers of all client parties and penetration testers. |
| `☐ Purpose`                                 | Description of the purpose for the conducted penetration test.                                        |
| `☐ Goals`                                   | Description of the goals that should be achieved with the penetration test.                           |
| `☐ Scope`                                   | All IPs, domain names, URLs, or CIDR ranges.                                                          |
| `☐ Lines of Communication`                  | Online conferences or phone calls or face-to-face meetings, or via e-mail.                            |
| `☐ Time Estimation`                         | Start and end dates.                                                                                  |
| `☐ Time of the Day to Test`                 | Times of the day to test.                                                                             |
| `☐ Penetration Testing Type`                | External/Internal Penetration Test/Vulnerability Assessments/Social Engineering.                      |
| `☐ Penetration Testing Locations`           | Description of how the connection to the client network is established.                               |
| `☐ Methodologies`                           | OSSTMM, PTES, OWASP, and others.                                                                      |
| `☐ Objectives / Flags`                      | Users, specific files, specific information, and others.                                              |
| `☐ Evidence Handling`                       | Encryption, secure protocols                                                                          |
| `☐ System Backups`                          | Configuration files, databases, and others.                                                           |
| `☐ Information Handling`                    | Strong data encryption                                                                                |
| `☐ Incident Handling and Reporting`         | Cases for contact, pentest interruptions, type of reports                                             |
| `☐ Status Meetings`                         | Frequency of meetings, dates, times, included parties                                                 |
| `☐ Reporting`                               | Type, target readers, focus                                                                           |
| `☐ Retesting`                               | Start and end dates                                                                                   |
| `☐ Disclaimers and Limitation of Liability` | System damage, data loss                                                                              |
| `☐ Permission to Test`                      | Signed contract, contractors agreement                                                                |
## Kick-Off Meeting
The kick-off meeting typically occurs after the contract is signed and includes key stakeholders such as client POCs from various departments (e.g., Internal Audit, Information Security, IT) and technical support staff (developers, sysadmins, network engineers). From the penetration testing team, members like the Practice Lead, penetration tester(s), and sometimes a Project Manager or Sales Executive are present.

Key points discussed in the meeting:

- **Test Overview**: The scope and process of the penetration test are explained. Typically, Denial of Service (DoS) testing is excluded.
- **Critical Vulnerabilities**: If a critical vulnerability (e.g., unauthenticated remote code execution, SQL injection) is identified, testing will pause. A vulnerability notification report will be created, and emergency contacts will be notified to assess the risk and determine if an immediate fix is needed.
- **Internal Test Protocol**: During internal tests, testing is paused for issues such as system unresponsiveness, illegal activity detection, or the presence of an external threat actor.

also informs clients of:
- **Log Entries and Alarms**: Penetration testing may generate numerous log entries and trigger security alerts.
- **Account Lockout Risks**: Brute force or similar attacks may inadvertently lock users out of the system.

Clients are instructed to report any negative impacts during the test.
## Contractors Agreement
If the penetration test also includes physical testing, then an additional contractor's agreement is required. Since it is not only a virtual environment but also a physical intrusion, completely different laws apply here. It is also possible that many of the employees have not been informed about the test. Suppose we encounter employees with a very high-security awareness during the physical attack and social engineering attempts, and we get caught. In that case, the employees will, in most cases, contact the police.

#### Contractors Agreement - Checklist for Physical Assessments
This additional `contractor's agreement` is our "`get out of jail free card`" in this case.

| **Checklist**                     |
| --------------------------------- |
| `☐ Introduction`                  |
| `☐ Contractor`                    |
| `☐ Purpose`                       |
| `☐ Goal`                          |
| `☐ Penetration Testers`           |
| `☐ Contact Information`           |
| `☐ Physical Addresses`            |
| `☐ Building Name`                 |
| `☐ Floors`                        |
| `☐ Physical Room Identifications` |
| `☐ Physical Components`           |
| `☐ Timeline`                      |
| `☐ Notarization`                  |
| `☐ Permission to Test`            |
