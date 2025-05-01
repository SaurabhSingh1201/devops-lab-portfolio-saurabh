# GitLab CI/CD Demo

This demo shows a simple GitLab CI/CD pipeline.

## Overview

- **Build**: Docker image is built using the `Dockerfile`.
- **Test**: Run unit tests using `pytest`.
- **Deploy**: Deploys to a server (placeholder script).

### Files

- `.gitlab-ci.yml`: CI/CD pipeline definition
- `Dockerfile`: Docker configuration for the app
- `app.py`: Simple Python app using Flask