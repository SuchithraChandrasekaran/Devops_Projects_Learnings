Jenkins - Beginner to Real-Time project
--------------------

1.What is Jenkins?
------------------------

Jenkins is an open-source automation server used for Continuous Integration (CI) and Continuous Deployment (CD) in DevOps. 

It automates building, testing, and deploying applications.

✅ Supports plugins for various integrations

✅ Can be used with Docker, Kubernetes, AWS, Git, Maven, Ansible, etc.

2.Installing Jenkins on Windows
------------------------

1️⃣ Download Jenkins from Jenkins official site

2️⃣ Install it 

3️⃣ Start Jenkins

    Open http://localhost:8080 in your browser

3.First Jenkins Job (GitHub + Git Bash)
------------------------  

Create a Simple Freestyle Job

1️⃣ Open Jenkins → New Item → Freestyle Project

2️⃣ Source Code Management: Select Git

    Repo URL: https://github.com/SuchithraChandrasekaran/my-repo.git

    Credentials: Add your GitHub credentials

3️⃣ Build Step (Run a shell script in Git Bash)

    Click Add Build Step → Execute Windows batch command

    "C:\Program Files\Git\bin\bash.exe" -c "echo Hello from Jenkins && ls"

4️⃣ Save & Build Now 🎉

4.Automate GitHub Code Deployment
------------------------  

  Using Webhooks (Trigger Build on Code Push)
  1️⃣ Enable Poll SCM:

      Go to Job → Configure → Build Triggers → Check Poll SCM
      
      Set: H/5 * * * * (checks every 5 mins)
      
  2️⃣ GitHub Webhook (Instant Trigger):

      In your GitHub Repo → Settings → Webhooks

      Add URL: http://localhost:8080/github-webhook/

 Select Just the push event
 
 Now, every push to GitHub triggers Jenkins build

5.Real-Time Tasks
-------------------
   
✅ Task 1: Create a pipeline job using Jenkinsfile

✅ Task 2: Integrate Jenkins with Docker to build and run a container



