One way to connect to a compromised system is through network protocols, like `SSH` for Linux or `WinRM` for Windows, which would allow remote login to the compromised system.

The other method of accessing a compromised host for control and remote code execution is through shells. There are three main types of shells: Reverse Shell, Bind Shell, and Web Shell.

| Type of Shell   | Method of Communication                                                                                                     |
| --------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `Reverse Shell` | Connects back to our system and gives us control through a reverse connection.                                              |
| `Bind Shell`    | Waits for us to connect to it and gives us control once we do.                                                              |
| `Web Shell`     | Communicates through a web server, accepts our commands through HTTP parameters, executes them, and prints back the output. |
## Reverse Shell
A `Reverse Shell` is the most common type of shell, start a `netcat` listener on our machine that listens on a specific port, say port `1234`. With this listener in place, we can execute a `reverse shell command` that connects the remote systems shell, i.e., `Bash` or `PowerShell` to our `netcat` listener, which gives us a reverse connection over the remote system.

### Netcat Listener

The first step is to start a `netcat` listener on a port of our choosing

```shell
$ nc -lvnp 1234

listening on [any] 1234 ...
```

The flags we are using are the following:

| Flag      | Description                                                                         |
| --------- | ----------------------------------------------------------------------------------- |
| `-l`      | Listen mode, to wait for a connection to connect to us.                             |
| `-v`      | Verbose mode, so that we know when we receive a connection.                         |
| `-n`      | Disable DNS resolution and only connect from/to IPs, to speed up the connection.    |
| `-p 1234` | Port number `netcat` is listening on, and the reverse connection should be sent to. |