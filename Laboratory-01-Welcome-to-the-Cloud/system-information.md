# System Information

## Operating System

- **Operating System:** Ubuntu
- **Version:** Ubuntu 24.04.4 LTS
- **Codename:** Noble Numbat
- **Kernel Version:** 6.8.8-136-generic

## CPU Information

- **Processor:** Intel Xeon E3-20xx (Sandy Bridge, 18RS update)

## Memory Information

- **Total RAM:** Approximately 1.9 GiB
- **Available Memory:** Approximately 1.4 GiB
- **Swap:** Approximately 1.0 GiB

## Disk Information

- **Root Filesystem:** Approximately 19 GB
- **Used:** Approximately 5.4 GB
- **Available:** Approximately 13 GB
- **Usage:** Approximately 30%

## System Environment

- **Hostname:** ubuntu
- **Platform:** KillerCoda Playground

## Commands Used

The following Linux commands were used to collect system information:

```bash
cat /etc/os-release
uname -r
lscpu | grep "Model name"
free -h
df -h
