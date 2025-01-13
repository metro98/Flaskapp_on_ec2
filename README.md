Automated CI/CD Pipeline with GitHub Actions, Terraform, Ansible, Docker, and AWS
Description
This project demonstrates the implementation of a fully automated CI/CD pipeline for deploying a containerized web application to AWS. It integrates modern DevOps tools and practices to ensure seamless provisioning, configuration, and deployment of a simple "Hello, World!" web application.
Key Components
GitHub Actions: Automates continuous integration and deployment.
Terraform: Provisions and manages AWS infrastructure (e.g., EC2 instances, security groups).
Ansible: Configures EC2 instances and deploys the application.
Docker: Containerizes the web application for consistent deployment.
AWS: Hosts the infrastructure in the cloud.
Features
Automated provisioning of AWS resources using Terraform.
Configuration of EC2 instances with Ansible to install Docker and deploy the app.
Continuous integration triggered on every code commit via GitHub Actions.
Deployment of a containerized web application using Docker.
Secure management of secrets (AWS keys, SSH keys) using GitHub Secrets.
Technologies Used
Technology	Purpose
GitHub Actions	CI/CD automation
Terraform	Infrastructure as Code (IaC)
Ansible	Configuration management and deployment
Docker	Application containerization
AWS (EC2)	Cloud hosting
How It Works
A code push to the main branch triggers the CI/CD pipeline in GitHub Actions.
Terraform provisions necessary AWS infrastructure:
EC2 instance for hosting the application.
Security groups to allow HTTP and SSH traffic.
Ansible configures the EC2 instance:
Installs Docker.
Downloads the Docker image from Docker Hub/ECR.
Deploys the containerized web application.
The application becomes accessible via the public IP of the EC2 instance.
Workflow Diagram
Workflow Diagram
Setup Instructions
Prerequisites
Install:
Git
Terraform
Ansible
Docker
Set up an AWS account and create an SSH key pair for EC2 access.
Steps
Clone this repository:
bash
git clone https://github.com/metro98/Flaskapp_on_ec2.git
cd your-repo-name
Add your AWS credentials and SSH key to GitHub Secrets:
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
EC2_PRIVATE_KEY
Add your Dockerhub credentials:
DOCKERHUB_USERNAME
DOCKERHUB_PASSWORD
Push your code to trigger the pipeline:
bash
git add .
git commit -m "Initial commit"
git push origin main
Contributing
Contributions are welcome! If you'd like to improve this project:
Fork this repository.
Make your changes.
Submit a pull request.
