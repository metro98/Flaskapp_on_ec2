Automated CI/CD Pipeline with GitHub Actions, Terraform, Ansible, Docker, and AWS

Description
This project demonstrates the implementation of a fully automated CI/CD pipeline for deploying a containerized web application to AWS. The pipeline leverages modern DevOps tools and practices, including:

GitHub Actions: For continuous integration and deployment automation.

Terraform: To provision and manage AWS infrastructure (e.g., EC2 instances, security groups).

Ansible: For configuration management and application deployment.

Docker: To containerize the web application for consistent deployment.

AWS: As the cloud platform to host the infrastructure.

The pipeline ensures seamless provisioning, configuration, and deployment of a simple "Hello, World!" web application.

Features
Automated provisioning of AWS resources using Terraform.
Configuration of EC2 instances with Ansible to install Docker and deploy the app.
Continuous integration via GitHub Actions triggered on every code commit.
Deployment of a containerized web application using Docker.
Secure management of secrets (AWS keys, SSH keys) using GitHub Secrets.

Technologies Used
CI/CD: GitHub Actions
Infrastructure as Code (IaC): Terraform
Configuration Management: Ansible
Containerization: Docker
Cloud Provider: AWS (EC2)


How It Works
A code push to the main branch triggers the CI/CD pipeline in GitHub Actions.
Terraform provisions the necessary AWS infrastructure:
EC2 instance for hosting the application.
Security groups for allowing HTTP and SSH traffic.
Ansible configures the EC2 instance:
Installs Docker.
Deploys the containerized web application.
The web application becomes accessible via the public IP of the EC2 instance.


Setup Instructions
Prerequisites:
Install Git, Terraform, Ansible, and Docker.
Set up an AWS account and create an SSH key pair for EC2 access.
Steps:
Clone this repository:
bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
Add your AWS credentials and SSH key to GitHub Secrets:
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
EC2_PRIVATE_KEY
Push your code to trigger the pipeline:
bash
git add .
git commit -m "Initial commit"
git push origin main


Contributions are welcome! If you’d like to improve this project, feel free to fork the repository, make changes, and submit a pull request.