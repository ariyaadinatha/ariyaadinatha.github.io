---
title: Introduction to Website Security
categories: [Intro to Security]
tags: [Cyber Security]
render_with_liquid: false
---

## Web Server Basics
A web server is a software application that responsible for serving web content to clients. It handles incoming HTTP requests from web browsers and responds by sending back the requested web pages, files, or resources.

## HTTP
HTTP (Hypertext Transfer Protocol) is an application layer protocol used for communication between web browsers (clients) and web servers. It is the foundation of data communication on the World Wide Web and is used to request and deliver web pages, images, videos, and other resources.

#### *Characteristic*
* **Stateless**: Each HTTP request-response cycle is independent and does not retain any state information between requests. This means that the server does not keep track of past interactions with the client.
* **Connectionless**: Each HTTP request-response pair typically uses a separate connection between the client and the server. The connection is opened and closed for each request-response cycle.
* **Text-Based**: HTTP messages are in plain text format, making them human-readable. Each message consists of a request or response line, headers, and an optional message body.
* **Methods**: HTTP defines various methods (verbs) for different types of actions, such as GET (retrieve a resource), POST (submit data to be processed), PUT (update a resource), DELETE (remove a resource), and more.
* **Status Codes**: HTTP responses include status codes that indicate the outcome of the request, such as 200 (OK), 404 (Not Found), 500 (Internal Server Error), etc.

#### *HTTP Request Structure*
* Headers
* HTTP Request Methods
* User Agent