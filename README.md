# Reddit Clone App on Kubernetes with CI/CD

This project demonstrates how to deploy a Reddit clone app on Kubernetes with Ingress and includes a GitHub Actions CI/CD pipeline.

## Architecture

The application is deployed on Amazon EKS (Elastic Kubernetes Service) with the following components:
- Next.js Reddit clone frontend
- Kubernetes deployments, services, and ingress
- GitHub Actions CI/CD pipeline

## Prerequisites

Before you begin, you should have the following tools installed on your local machine:

- Docker
- kubectl
- AWS CLI
- Git
- Terraform

## CI/CD Pipeline

This project includes a complete CI/CD pipeline using GitHub Actions with the following stages:

1. **Build and Test**: Builds the application and runs tests
2. **Security Scanning**: Performs security scans using SonarQube, OWASP, and Trivy
3. **Build and Push Docker Image**: Creates a Docker image and pushes it to Docker Hub
4. **Update Kubernetes Manifests**: Updates the deployment files with the new image tag
5. **Deploy to Kubernetes**: Deploys the application to the EKS cluster
6. **Post-Deployment Checks**: Verifies the deployment was successful

## Installation

Follow these steps to install and run the Reddit clone app:

1. Clone this repository to your local machine: 
   ```
   git clone https://github.com/rooshanriaz/    Automation-of-Kubernetes-Cluster-Deployment-Using-Terraform-on-AWS.git
   ```

2. Navigate to the project directory: 
   ```
   cd Automation-of-Kubernetes-Cluster-Deployment-Using-Terraform-on-AWS
   ```

3. Build the Docker image for the Reddit clone app: 
   ```
   docker build -t reddit-clone-app .
   ```

4. Deploy the app to Kubernetes: 
   ```
   kubectl apply -f deployment.yml
   ```

5. Deploy the Service for the deployment: 
   ```
   kubectl apply -f service.yml
   ```

6. Apply the Ingress configuration: 
   ```
   kubectl apply -f ingress.yml
   ```

## Accessing the Application

Once deployed, the application can be accessed via the LoadBalancer endpoint provided by AWS.

## Contributing

If you'd like to contribute to this project, please open an issue or submit a pull request.


