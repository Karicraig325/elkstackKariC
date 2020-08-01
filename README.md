# elkstackKariC
Elk Stack project with Ansible and Bash
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![alt text](https://github.com/Karicraig325/elkstackKariC/blob/master/Images/ELK1.PNG "Diagram")

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the install-elk.yml file may be used to install only certain pieces of it, such as Filebeat.


This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly protected for the availability of resources, in addition to restricting access through single monitored system to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
- filebeat monitors log files you specify
- metricbeat records metrics from all systems

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.5   | Linux            |
| Web1     | Server   | 10.0.0.6   | Linux            |
| Web2     | Server   | 10.0.0.7   | Linux            |
| Elk      | Server   | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the 70.106.200.88 machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

Machines within the network can only be accessed by jump box 10.0.0.5.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 70.106.200.88        |
| Web1     | No                  | 10.0.0.5             |
| Web2     | No                  | 10.0.0.5             |
| Elk	     | No			             | 10.0.0.5		          |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- it will run commands on multiple servers with one playbook

The playbook implements the following tasks:
- install docker.io
- install pip3
- install docker python module
- increase virtual memory and increase it when restarting machine
- download and launch elk machine

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.6 10.0.0.7

We have installed the following Beats on these machines:
- Filebeat and metricbeat

These Beats allow us to collect the following information from each machine:
Filebeats will monitor and collect the data that is specified.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the elk.yml file to etc/ansible/hosts.
- Update the hosts file to include the updated yaml files that run the commands to install filebeat or elk.
- Run the playbook, and navigate to 10.1.0.4 to check that the installation worked as expected.
