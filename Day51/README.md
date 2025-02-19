# AWS IAM User Creation & EC2 Setup with Jenkins and Docker

## 1. [Create an IAM User with EC2 Access](pplx://action/followup)

### [Steps to Create IAM User](pplx://action/followup)

1.  **[Go to IAM Dashboard](pplx://action/followup)**: Navigate to the [AWS IAM Console](https://console.aws.amazon.com/iam/home)
2.  **[Click Users](pplx://action/followup)**: Find it in the left navigation menu
3.  **[Click Add users](pplx://action/followup)**: Located in the top-right corner
4.  **[Enter a Username](pplx://action/followup)**: Example: `devops-user`
5.  **[Access Type](pplx://action/followup)**:
    *   Check **Programmatic access** (for CLI, SDK, API access)
    *   (Optional) Check **AWS Management Console Access** if needed
6.  Click **Next: Permissions**
7.  Select **Attach policies directly** 
8.  Search and attach **AmazonEC2FullAccess** 
9.  Click **Next: Tags** → **Skip**.
10. Click **Next: Review** → **Click Create user**
11. Save the **Access Key ID** and **Secret Access Key**.

