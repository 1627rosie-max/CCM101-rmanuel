# Operational Manual

## 1. System Access

The WordPress application can be accessed from the host
browser using:

http://localhost:8080

The application is running inside the Ubuntu Server
virtual machine through Docker and VirtualBox.

## 2. Check System Status

To check the status of the WordPress and MySQL containers:

docker compose ps

Both containers should show as running.

## 3. Start the System

Start the Docker services using:

docker compose up -d

This starts the WordPress and MySQL containers in the
background.

## 4. Stop the System

To stop the containers:

docker compose down

Persistent volumes are retained when -v is not used.

## 5. Access WordPress

Open a web browser on the Windows host and go to:

http://localhost:8080

This should display the WordPress application.

## 6. Check Container Logs

To view Docker container logs:

docker compose logs

For WordPress logs:

docker compose logs wordpress

For MySQL logs:

docker compose logs mysql
## 7. Manual Database Backup

The database backup can be executed manually using:

./automation-script.sh

Backup files are stored in:

/home/cloudadmin/ccm101-backups/

To check the backup files:

ls -lh /home/cloudadmin/ccm101-backups/
## 8. Scheduled Backup

The backup script is scheduled using Cron.

To check the configured Cron schedule:

crontab -l

The scheduled backup runs every day at:

11:00 PM

Cron schedule:

0 23 * * *
## 9. Firewall Status

To check the UFW firewall:

sudo ufw status verbose

The firewall is configured with:

Default: deny incoming
Default: allow outgoing

Required ports include:

SSH — 22
Web Application — 8080
## 10. Troubleshooting
Containers are Not Running

Check the container status:

docker compose ps

Then check the logs:

docker compose logs

Restart the services:

docker compose down
docker compose up -d
WordPress Cannot Be Accessed

Check whether the WordPress container is running:

docker compose ps

Then verify that port 8080 is being used:

docker ps
Backup Failed

Run the backup script manually:

./automation-script.sh

Then check the backup directory:

ls -lh /home/cloudadmin/ccm101-backups/
## 11. Important Maintenance Note

Do not normally use:

docker compose down -v

The -v option can remove the persistent Docker volumes
containing WordPress and MySQL data.

Use:

docker compose down

instead when stopping the application normally.

## 12. Basic Maintenance Commands
Check Running Containers
docker compose ps
Check Docker Volumes
docker volume ls
Check Firewall
sudo ufw status
Check Scheduled Tasks
crontab -l
Check Backup Files
ls -lh /home/cloudadmin/ccm101-backups/
Result

These procedures provide the basic steps for accessing,
operating, monitoring, securing, and maintaining the
CCM101 Enterprise Cloud application.


This follows the operational-manual structure shown in your reference PDF: acc
