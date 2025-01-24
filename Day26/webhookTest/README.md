Webhook Test Project
----------------

This project demonstrates the integration of GitHub webhooks with Jenkins to automate tasks upon code changes in the repository. 

It includes a simple workflow where a push event triggers a Jenkins build, which prints a predefined message.

Project Structure
----------------

125daysDevops/

│

└── Day26/

    └── webhook/

        └── test.txt


125daysDevops: Main repository

Day26/webhook: Folder for the webhook test project.

test.txt: A sample file used to demonstrate webhook-triggered builds.

How It Works
----------------

Webhook Setup:
----------------

A GitHub webhook is configured to trigger Jenkins builds on a push event.

The payload URL is set to the Jenkins server (http://<my public ip>:8080/github-webhook/)

Jenkins Job:
----------------

A Jenkins job named webhookProj is configured to execute on webhook triggers.

The job prints a message:

    Code pushed to GitHub triggered this build!

Workflow:
----------------

> Modify or push code to Day26/webhook/test.txt

> GitHub sends a webhook event to Jenkins.

> Jenkins starts the build and executes the configured steps.

Challenges Faced
----------------

1. GitHub Webhook Not Triggering

    Challenge: Webhook failed with the error "is not reachable over the public Internet (localhost)."

    Solution: Used my public ip

2. Console Output Missing in Jenkins

    Challenge: Jenkins build ran successfully, but the expected message was not displayed.

    Solution: Added a shell command (echo Code pushed to GitHub triggered this build!) in the Jenkins job configuration.

Key Learnings
----------------

1.How to set up GitHub webhooks for Jenkins.

2.Debugging webhook delivery and Jenkins job configurations.

How to Test

  Clone the repository:

      git clone [https://github.com//125daysDevops.git]

  Navigate to the folder:

      cd 125daysDevops/Day26/webhook

  Modify the test.txt file:

      echo "Testing webhook integration!" >> test.txt

git add test.txt

git commit -m "Updated test.txt to trigger webhook"

git push origin main

Check Jenkins for the triggered build.

Tools Used
----------------

  Jenkins: For continuous integration and automation.

  GitHub: Source code management and webhook events.










