# Linux Commands contd...

## 8. Archiving and Compression

### `tar` – Archive files  
- `tar -czf archive.tar.gz /path/to/directory` – Compress files using gzip  
- `tar -xzf archive.tar.gz` – Extract gzipped tarball  
- `tar -cf archive.tar /path/to/directory` – Create a tarball  
- `tar -xf archive.tar` – Extract tarball  

### Other Compression Commands  
- `zip` – Package and compress files into a ZIP archive  
- `unzip` – Extract files from a ZIP archive  
- `gzip` – Compress files using the gzip algorithm  
- `gunzip` – Decompress files compressed with gzip  

---

## 9. Package Management (Depends on Distribution)

### **Red Hat-based (e.g., CentOS, Fedora)**  
#### `yum` – Package manager for RPM-based systems  
- `yum install <package>` – Install a package  
- `yum update` – Update installed packages  
- `yum remove <package>` – Remove a package  

---

## 10. System Services and Daemon Management

### `systemctl` – Control the systemd system and service manager  
- `systemctl start <service>` – Start a service  
- `systemctl stop <service>` – Stop a service  
- `systemctl restart <service>` – Restart a service  
- `systemctl enable <service>` – Enable a service to start on boot  
- `systemctl disable <service>` – Disable a service from starting on boot  
- `systemctl status <service>` – Check service status  

---

## 11. Scheduling Tasks

### `cron` – Daemon for running scheduled commands  
- `crontab -e` – Edit cron jobs for the current user  
- `crontab -l` – List the current user’s cron jobs  
- `crontab -r` – Remove the current user's cron jobs  

### `at` – Run commands at a specified time  
- `at 09:00` – Schedule a command to run at 09:00 AM  

### `batch` – Run commands when the system load is low  

### `sleep` – Delay for a specified time  
- `sleep 5s` – Sleep for 5 seconds  

---

## 12. File Permissions and Security

### File Ownership and Permissions  
- `chmod` – Change file permissions  
- `chown` – Change file owner and group  
- `chgrp` – Change the group ownership of a file  
- `umask` – Set default permissions for new files  

### User and Security Commands  
- `sudo` – Execute a command as another user (usually root)  
- `passwd` – Change a user’s password  
- `sudoers` – Manage sudo access for users  
- `gpasswd` – Administer group password  

### Network Security  
- `ss` – Display socket statistics (for secure network connections)  
