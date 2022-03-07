# Week-13-Project
Project work for week 13
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

Week-13-Project/Diagrams/SP Homework Week 12 Azure Diagram.drawio.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - Playbook file: My-first-playbook.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly functional, in addition to restricting traffic to the network.
- What aspect of security do load balancers protect? What is the advantage of a jump box?
	Load balance reroute live traffic from one server to another, and thus is an aspect of redundancy.
	They prove useful if a server fails, due to cyber attacks such as DDOS.
	The jumpbox is important as it allows the virtual machines to be more discrete by preventing their public IP addresses to be exposed.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the network and system log.
- What does Filebeat watch for?
	It monitors log files, collecting log events, and can send the data to Elasticsearch or Logstash	

- What does Metricbeat record?
	Metricbeat collects metrics and statistics, and forwards the data to Elasticsearch or Logstash.


The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name       | Function     | IP Address              | Operating System |
|------------|--------------|-------------------------|------------------|
| Jump Box   | Gateway      | 10.10.0.5               | Linux            |
| Web-1      | UbuntuServer | 10.10.0.8 / 20.70.9.88  | Linux            |
| Web-2      | UbuntuServer | 10.10.0.9 / 20.70.9.88  | Linux            |
| ELK Server | UbuntuServer | 10.1.0.4 / 40.78.89.136 | Linux            |


### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- Add whitelisted IP addresses
	TCP 5601

Machines within the network can only be accessed by Workstation and jump-box via ssh.
- Which machine did you allow to access your ELK VM? What was its IP address?
	Jump-box-provisioner. IP Address: 10.0.0.5 via SSH port 22
	Workstation. Public IP via TCP port 5601

A summary of the access policies in place can be found in the table below.

| Name       | Publicly Accessible | Allowed IP Addresses  |
|------------|---------------------|-----------------------|
| Jump Box   | Yes                 | Workstation Public IP |
| Web-1      | No                  | 10.10.0.5, Port 22    |
| Web-2      | No                  | 10.10.0.5, Port 22    |
| ELK Server | No                  | Public IP, Port 5601  |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
-What is the main advantage of automating configuration with Ansible?
	Quick and easy to deploy multiple applications simultaneously.
	Ansible lists the states and statuses of each installation.

The playbook implements the following tasks:
- In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
	Specify group of machines
	Install Docker.io	
	Install Pyhton-pip
	Increase Virtual Memory
	Download and Launch ELK Docker Container	
	Allow specific ports


### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- List the IP addresses of the machines you are monitoring_
	Web-1: 10.10.0.8
	Web-2: 10.10.0.9

We have installed the following Beats on these machines:
- Specify which Beats you successfully installed_
	Filebeat and Metricbeat

These Beats allow us to collect the following information from each machine:
- In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._
	Filebeat collects log files from specific places such as Apache, MySQL databses, Azure etc
	Metricbeat monitors statistics, CPU stats, filesystem, memory etc of VMs
	
### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the yml file to ansible folder.
- Update the config file to include remort users and ports
- Run the playbook, and navigate to IPaddress:5601/app/kibana to check that the installation worked as expected.

- Answer the following questions to fill in the blanks:_
- Which file is the playbook? Where do you copy it?
	my-first-playbook.yml, filebeat-playbook.yml, metricbeat-playbook.yml	
	It is copied to the ansible folder: /etc/ansible
- Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?
	You would update the hosts file: /etc/ansible/hosts
	In the hosts file, there are groups which specify IP addresses. The playbook refers to these groups to install the applications
- Which URL do you navigate to in order to check that the ELK server is running?
	IPAddress/app/kibana, where IP address is the IP address of the ELK server.

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._

ssh-keygen	
sudo cat .ssh/id_rsa.pub	
sudo docker container list -a	
sudo docker ps -a	
sudo docker start *container name*
sudo docker attach *container name*
nano /etc/ansible/hosts	
nano /etc/ansible/ansible.cfg	
ansible-playbook *file-name*
ssh ansible@Web-1 IP address
ssh ansible@Web-2 IP address
sudo apt-get update			
sudo systemctl status docker	
sudo systemctl start docker	
sudo docker pull cyberxsecurity/ansible	
sudo docker run -ti cyberxsecurity/ansible bash
curl -L -O [location of the file on the web]
dpkg -i [filename]
nano filebeat-config.yml	
nano filebeat-playbook.yml	
nano metricbeat-config.yml
nano metricbeat-playbook.yml		

