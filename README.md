# Cloud Build Sample Application
This project is a sample of a project using Google's Cloud Build. It packages a simple Hello-World application in a Docker image, and pushes the image in Google Container Registery for you to deploy it.

## Substitution Variable
The following substitution variable must be set when triggering each build:
- _APP_NAME: "my-application-name"

## Build artefacts
The following images will be created in GCR:
- gcr.io/my-project-name/my-application-name:latest
- gcr.io/my-project-name/my-application-name:{major_version}
- gcr.io/my-project-name/my-application-name:{major_version}.{minor_version}
- gcr.io/my-project-name/my-application-name:{major_version}.{minor_version}.{build_number}
- gcr.io/my-project-name/my-application-name:{major_version}.{minor_version}.{build_number}-{build_id}