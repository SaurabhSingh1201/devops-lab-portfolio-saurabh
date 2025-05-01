https://github.com/SaurabhSingh1201/devops-lab-portfolio-saurabh.git

#!/bin/bash

# 👇 Replace with your GitHub username
GITHUB_USERNAME="SaurabhSingh1201"

# Initialize Git
git init
git config user.name "Saurabh Singh"
git config user.email "singh1201saurabh@gmail.com"

# 1: Initial commit
git add README.md
GIT_AUTHOR_DATE="2024-12-01T10:00:00" GIT_COMMITTER_DATE="2024-12-01T10:00:00" \
git commit -m "Initial project structure with readme"

# 2: CI/CD
git add ci-cd-gitlab-demo/
GIT_AUTHOR_DATE="2025-01-05T15:00:00" GIT_COMMITTER_DATE="2025-01-05T15:00:00" \
git commit -m "Added GitLab CI/CD demo with sample pipeline"

# 3: Terraform
git add terraform-aws-basic/
GIT_AUTHOR_DATE="2025-02-10T12:30:00" GIT_COMMITTER_DATE="2025-02-10T12:30:00" \
git commit -m "Added Terraform setup for EC2 and VPC"

# 4: Python
git add python-automation/
GIT_AUTHOR_DATE="2025-03-02T09:00:00" GIT_COMMITTER_DATE="2025-03-02T09:00:00" \
git commit -m "Python script to auto-start EC2 and clean logs"

# 5: Monitoring
git add monitoring-stack/
GIT_AUTHOR_DATE="2025-03-25T14:00:00" GIT_COMMITTER_DATE="2025-03-25T14:00:00" \
git commit -m "Monitoring stack with Prometheus and Grafana setup"

# Push to GitHub
git branch -M main
git remote add origin https://github.com/$GITHUB_USERNAME/devops-lab-portfolio-saurabh.git
git push -u origin main
