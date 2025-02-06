# Jenkins Challenges and Fixes

This repository documents the smallest yet impactful challenges I encountered while working with Jenkins, along with their fixes.

## Challenges and Fixes

### 1. Jenkins Not Starting on Port 8080
**Issue:** Jenkins fails to start due to port 8080 being occupied.
**Fix:**
```bash
lsof -i :8080   # Check which process is using the port
kill -9 <PID>   # Kill the process
systemctl restart jenkins  # Restart Jenkins
```

### 2. Jenkins Plugins Failing to Install
**Issue:** Some plugins fail to install due to network restrictions.
**Fix:**
- Switch to a stable internet connection.
- Manually download and install the `.hpi` plugin file via:
```bash
cp plugin.hpi /var/lib/jenkins/plugins/
systemctl restart jenkins
```

### 3. Jenkins Pipeline Fails Due to Missing Dependencies
**Issue:** A pipeline fails due to missing dependencies in the build environment.
**Fix:**
- Add missing dependencies to the `Jenkinsfile`.
- Use Docker for a consistent build environment.

### 4. Jenkins Job Stuck in Pending State
**Issue:** A Jenkins job remains in a pending state indefinitely.
**Fix:**
- Check if an agent is available.
- Increase available executors under **Manage Jenkins > Nodes**.

### 5. Webhook Not Triggering Jenkins Build
**Issue:** GitHub webhook is not triggering a Jenkins build.
**Fix:**
- Ensure the correct webhook URL is configured in GitHub.
- Enable **GitHub hook trigger for GITScm polling** in job settings.

### 6. Python Scripts Not Running Directly in Jenkins
**Issue:** Python scripts fail to execute directly in Jenkins due to missing environment configurations.
**Fix:**
- Use a virtual environment for Python:
```bash
python3 -m venv venv
source venv/bin/activate
```
- Alternatively, use Docker to ensure a consistent Python environment:
```bash
docker run --rm -v $(pwd):/app -w /app python:3.8 python script.py
```

### 7. Jenkins Fails to Authenticate with Git
**Issue:** Jenkins cannot authenticate with a Git repository.
**Fix:**
- Use SSH keys instead of passwords.
- Store credentials in **Manage Jenkins > Credentials** and use them in the pipeline.

### 8. Docker Commands Failing in Jenkins Pipeline
**Issue:** Docker commands fail due to permission issues.
**Fix:**
- Add the Jenkins user to the `docker` group:
```bash
usermod -aG docker jenkins
systemctl restart jenkins
```
- Run the pipeline with appropriate permissions if necessary.

## My Experience with Jenkins

Setting up Jenkins and making it work smoothly was an extremely challenging journey for me. From installation issues to debugging complex pipeline errors, I faced countless obstacles. Understanding its configuration, managing dependencies, and troubleshooting unexpected failures required significant effort, patience, and research. Despite these difficulties, overcoming each problem gave me deeper insights into Jenkins and DevOps automation.

## Conclusion
These are some of the smallest yet common challenges I encountered in Jenkins. I'll keep updating this repository as I face new issues and their solutions.
