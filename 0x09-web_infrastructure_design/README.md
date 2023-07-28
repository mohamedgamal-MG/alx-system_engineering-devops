# Web Infrastructure Design Tasks

In this repository, you will find a series of tasks related to designing web infrastructures for hosting the website www.foobar.com. Each task builds upon the previous one, gradually increasing in complexity and addressing different aspects of web infrastructure design. Please make sure to write all your explanations in English to enhance your technical proficiency in various settings.

## Task 0: Simple Web Stack

Design a basic one-server web infrastructure that hosts the website reachable via www.foobar.com. The infrastructure should include the following components:

- 1 server
- 1 web server (Nginx)
- 1 application server
- 1 set of application files (your code base)
- 1 database (MySQL)
- The domain name foobar.com configured with a www record pointing to the server IP 8.8.8.8

Key Points to Explain:

- The role of a server
- The significance of the domain name
- The type of DNS record 'www' in www.foobar.com
- The roles of the web server, application server, and database
- How the server communicates with the user's computer requesting the website
- Identify issues with this infrastructure, such as SPOF (Single Point of Failure) and downtime during maintenance.

## Task 1: Distributed Web Infrastructure

Design a more robust three-server web infrastructure for hosting the website www.foobar.com. The new infrastructure should consist of the following elements:

- 2 servers
- 1 web server (Nginx)
- 1 application server
- 1 load-balancer (HAproxy)
- 1 set of application files (your code base)
- 1 database (MySQL)

Key Points to Explain:

- Rationale behind adding each additional element
- Configuration and working of the load balancer distribution algorithm
- Difference between Active-Active and Active-Passive setups for the load balancer
- How a database Primary-Replica (Master-Slave) cluster works
- The significance of Primary and Replica nodes concerning the application
- Identify issues with this infrastructure, including SPOF, security vulnerabilities (no firewall, no HTTPS), and lack of monitoring.

## Task 2: Secured and Monitored Web Infrastructure

Design a highly secure, encrypted, and monitored three-server web infrastructure for hosting www.foobar.com. The infrastructure should include the following components:

- 3 firewalls
- 1 SSL certificate to serve www.foobar.com over HTTPS
- 3 monitoring clients (data collector for Sumologic or other monitoring services)

Key Points to Explain:

- Reasons for adding each additional element
- Purpose and role of firewalls in the infrastructure
- Benefits of serving traffic over HTTPS
- Importance and usage of monitoring in the infrastructure
- Data collection process for the monitoring tool
- Steps to monitor web server QPS (Queries Per Second)

Identify issues with this infrastructure, such as SSL termination at the load balancer level, single MySQL server capable of accepting writes, and uniformity in components (database, web server, and application server).

## Task 3: Scale Up (Advanced)

This task explores the distinction between application servers and web servers and requires designing a more scalable infrastructure. The key requirements are as follows:

- 1 server
- 1 load-balancer (HAproxy) configured as a cluster with another one
- Separate components (web server, application server, database) with their own servers

Key Points to Explain:

- Reasoning behind adding each additional element
- Explain the role of the load balancer in the cluster configuration
- Highlight the difference between application servers and web servers in the infrastructure

## URLs for the Repositories

You can access the code and documentation for each task from the following URLs:

1. Task 0: Simple Web Stack
   - [GitHub Repository](https://github.com/alx-system_engineering-devops/0x09-web_infrastructure_design)
   - File: 0-simple_web_stack

2. Task 1: Distributed Web Infrastructure
   - [GitHub Repository](https://github.com/alx-system_engineering-devops/0x09-web_infrastructure_design)
   - File: 1-distributed_web_infrastructure

3. Task 2: Secured and Monitored Web Infrastructure
   - [GitHub Repository](https://github.com/alx-system_engineering-devops/0x09-web_infrastructure_design)
   - File: 2-secured_and_monitored_web_infrastructure

4. Task 3: Scale Up (Advanced)
   - [GitHub Repository](https://github.com/alx-system_engineering-devops/0x09-web_infrastructure_design)
   - File: 3-scale_up

Feel free to start working on the tasks and submit your solutions to your own GitHub repository. Remember, clear explanations in English will help improve your technical proficiency and understanding in various scenarios. Good luck!
