1.Basics of Jenkins
----------------------

Q1: What is Jenkins? Why is it used in DevOps?
--------------------
Jenkins is an open-source automation server used for Continuous Integration (CI) and Continuous Deployment (CD) in DevOps. It automates building, testing, and deploying applications.

Why Jenkins?
------------
Automates repetitive tasks

Supports plugins for Git, Docker, AWS, etc.

Can run on Windows, Linux, macOS

Helps detect bugs early in development

Q2: How does Jenkins help in CI/CD?
-----------------------

CI (Continuous Integration): Automatically tests code whenever developers push changes.

CD (Continuous Deployment): Deploys the tested code to production automatically.

Jenkins works as a central hub that integrates with Git, Docker, Kubernetes, and cloud platforms.

Q3: What are Jenkins Pipelines? How do they work?
-----------------------

Jenkins Pipelines are automated workflows defined in a file called Jenkinsfile.

They allow you to write CI/CD processes as code.

Example Pipeline (Declarative)

      pipeline {
          agent any
          stages {
              stage('Build') {
                  steps {
                      echo 'Building project...'
                  }
              }
              stage('Test') {
                  steps {
                      echo 'Running tests...'
                  }
              }
              stage('Deploy') {
                  steps {
                      echo 'Deploying to production...'
                  }
              }
          }
      }

2.Jenkins Architecture & Components
--------------------------------------

Q4: What is Jenkins Master-Agent architecture?
-------------------------

Jenkins Master: The main Jenkins server that schedules jobs.

Jenkins Agent: A worker node that runs the job.

Master distributes jobs to multiple agents for parallel execution.

3.Jenkins Jobs & Builds
--------------------------------------

Q5: How do you create a Jenkins Job?
--------------------

Go to Jenkins Dashboard → Click New Item

Choose Freestyle Project or Pipeline Job

In the Source Code Management section, select Git and enter your repo URL

In Build Steps, choose "Execute Windows batch command"
      
    Click Save → Build Now

4.Jenkins Pipelines & Scripting
-------------------------------

Q6: What is the difference between Declarative and Scripted Pipeline?
-------------

Declarative Pipeline (Easier, structured)

      pipeline {
          agent any
          stages {
              stage('Build') { steps { echo 'Building...' } }
          }
      }
      Scripted Pipeline (More flexible, complex)
      node {
          stage('Build') {
              echo 'Building...'
          }
      }

5.Jenkins Integration & Plugins
------------------------

Q7: How do you integrate Jenkins with GitHub?
---------------------

    Install Git Plugin in Jenkins

    Add GitHub webhook:

    Go to GitHub Repo Settings → Webhooks → Add URL

    http://your-jenkins-ip:8080/github-webhook/

    Enable Poll SCM in Jenkins (use H/5 * * * *)

    Now, every git push triggers Jenkins build automatically


6.Jenkins Security & Administration
--------------

Q8: How do you secure Jenkins?
-------------

Enable Role-Based Access Control (RBAC)

Use Jenkins credentials for storing secrets

Disable anonymous access

Install CSRF protection plugin

7.Troubleshooting & Performance
-------------------------

Q9: How do you debug a failed Jenkins build?
-------------------------

Check the Console Output in Jenkins job

Check Jenkins logs on Windows:

type C:\ProgramData\Jenkins\.jenkins\logs\jenkins.log

Verify plugins and dependencies

Run the build manually to see errors




