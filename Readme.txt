## **Basic Project: Deploy a Dockerized Web App on AWS EC2**

### **Project Overview**
You will deploy a simple "Hello, World!" web application (e.g., a Python Flask or Node.js app) running in a Docker container on an AWS EC2 instance. The infrastructure will be provisioned using Terraform, configured using Ansible, and automated with GitHub Actions.

### **Project Architecture**
1. **Web Application**:
   - A basic "Hello, World!" app running inside a Docker container.
2. **Infrastructure**:
   - AWS EC2 instance to host the Docker container.
   - Security groups to allow HTTP traffic.
3. **Automation**:
   - Terraform for provisioning the EC2 instance and security groups.
   - Ansible for installing Docker and deploying the containerized app.
   - GitHub Actions for automating the CI/CD pipeline.