# CCM101 Enterprise Cloud Architect

## Project Overview

This project demonstrates the deployment of a containerized WordPress
application with MySQL on an Ubuntu Server using Docker Compose.

The project also includes persistent storage, firewall protection,
and automated database backups using Bash and Cron.

## Technologies Used

- Windows Host Machine
- Oracle VirtualBox
- Ubuntu Server
- Docker
- Docker Compose
- WordPress
- MySQL
- Bash
- Cron
- UFW Firewall
- GitHub

## Architecture

The system uses a Windows host machine with Oracle VirtualBox to run
an Ubuntu Server virtual machine.

Docker Compose is used to run two main services:

- WordPress
- MySQL

The WordPress application communicates with MySQL through the Docker
network.

Persistent Docker volumes are used to preserve WordPress and MySQL data.

Docker Services
WordPress
Image: wordpress:latest
Container: ccm101-wordpress
Port: 8080
MySQL
Image: mysql:8.0
Container: ccm101-mysql
Port: 3306

MySQL is used by WordPress through the internal Docker network.

Persistent Storage

The project uses Docker named volumes:

wordpress_data
db_data

These volumes preserve application and database data when the
containers are restarted or recreated.

Firewall Security

UFW Firewall is enabled on the Ubuntu Server.

Default firewall policy:

Deny incoming
Allow outgoing

Allowed ports:

SSH: 22
Web Application: 8080

MySQL is not directly exposed to the host network.

Backup and Automation

A Bash script is used to automatically create compressed MySQL
database backups.

Backup files are stored in:

/home/cloudadmin/ccm101-backups/

Backup script:

automation-script.sh

The backup script is scheduled using Cron to run every day at
11:00 PM.

Cron schedule:

0 23 * * *
WordPress Access

The WordPress application can be accessed from the host browser:

http://localhost:8080

The application runs through VirtualBox port forwarding to the
Ubuntu Server.

Docker Commands

Start the application:

docker compose up -d

Check the containers:

docker compose ps

Stop the application:

docker compose down

View container logs:

docker compose logs
Backup Commands

Run the backup script manually:

./automation-script.sh

Check backup files:

ls -lh /home/cloudadmin/ccm101-backups/

Check Cron:

crontab -l
Project Files
Laboratory-10-Enterprise-Cloud-Architect/
│
├── README.md
├── architecture-diagram.png
├── automation-script.sh
├── docker-compose.yml
├── operational-manual.md
└── final-reflection.md
Project Verification

The following were successfully verified:

WordPress container is running
MySQL container is running
WordPress is accessible through the browser
Persistent Docker volumes are configured
UFW firewall is active
Database backup script works
Cron automation is configured
Backup files are successfully created

## Group Members:
Rosebeth Manuel
Einstein Morales
Christine Dino
Lyra Palabay 

Course Information

Course: CCM101 - Cloud Computing
Project: Mission 10 - The Enterprise Cloud Architect
Application: Docker-Based WordPress + MySQL
