AWS EC2 instance management using Python
-----
Step 1: Install Dependencies
-----
Ensure you have Python installed. If not, download it from python.org.

1.1 Install Boto3 and AWS CLI
------
Open VS Code terminal and run:

    pip install boto3

install the AWS CLI 

  Download and run the AWS CLI MSI installer for Windows (64-bit):

    https://awscli.amazonaws.com/AWSCLIV2.msi

Step 2: Configure AWS Credentials
------

2.1 Create IAM User 

        Go to AWS IAM Console

    Create a new IAM user with Programmatic access.

    Attach the "AmazonEC2FullAccess" policy.

    Copy Access Key ID and Secret Access Key.
