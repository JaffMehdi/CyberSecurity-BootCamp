# CyberSecurity-BootCamp
This hold all my work for the bootcamp 
[README.txt](https://github.com/JaffMehdi/CyberSecurity-BootCamp/files/7136992/README.txt)
Automated ELK Stack Deployment
The files in this repository were used to configure the network depicted below.
You can see the diagram in the folder Diagrams

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._filebeat-playbook.yml & metricbeat-playbook.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_
	Load Balancers: Load Balancing plays an important security role as computing moves evermore to the cloud. The off-loading function of a load balancer defends an organization against distributed denial-of-service (DDoS) attacks. It does this by shifting attack traffic from the corporate server to a public cloud provider.
	Jump Box: It acts as a stepping point for administrators accessing critical systems with all administrative actions performed via a jump box.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system resources.
- _TODO: What does Filebeat watch for? Filebeat watches for system logs and forward any changes to the elasticsearch host
- _TODO: What does Metricbeat record? Metricbeat records the metrics and statistics usage for display in elasticsearch

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name       | Function      | IP Address | Operating System |
|------------|---------------|------------|---------------------|
| Jump Box | Gateway       | 10.1.0.5    | Linux                      |
| Web1       | Web Server   | 10.1.0.9    | Linux                     |
| Web2       | Web Server   | 10.1.0.10  | Linux                     |
| ELK           | ELK Server    | 10.2.0.4    | Linux                     |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses: 20.36.39.56

Machines within the network can only be accessed by Jump Box and setting up a Docker.
- _TODO: Which machine did you allow to access your ELK VM? Jump Box What was its IP address? 10.1.0.5

A summary of the access policies in place can be found in the table below.

| Name       | Publicly Accessible | Allowed IP Addresses  |
|------------|----------------------|--------------------------|
| Jump Box | Yes                          | 147.10.245.73 10.1.0.5 |
| Web1       | No                           | 20.36.39.56                  |
| Web2       | No                           | 20.36.39.56                  |
| ELK           | No                           | 10.1.0.5                        |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible? Advantage is that you can put commands into multiple servers from a single playbook

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
	- Install: docker.io
	- Install: python-pip
	- Install: docker
	- Launch docker container: elk

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.
You can find the screen shot under the folder Ansible.

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_ 
	10.1.0.9
	10.1.0.10
	10.2.0.4

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_
	- I was able to successfully install Filebeat and Metricbeat to both the web server and the ELK

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the elk_install.yml file to /etc/ansible/roles/elk_install.yml.
- Update the host file to include the IP address of the destination of the ELK server.
- Run the playbook, and navigate to http://[your_elk_server_ip]:5601/app/kibana to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_the file that has fileat-playbook.yml & metricbeat-playbook.yml needs to be copied to /etc/ansible/file/
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_ edit the /etc/ansible/host file to add webserver/elkserver ip addresses
- _Which URL do you navigate to in order to check that the ELK server is running? http://[your_elk_server_ip]:5601/app/kibana
