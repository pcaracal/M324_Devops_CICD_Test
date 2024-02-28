# Packages

- https://github.com/users/pcaracal/packages/container/package/m324_devops_test_refcard02
- https://hub.docker.com/repository/docker/hashcatt/m324_devops_test_refcard02/general

# What was done

## 31.01.2024

1. Consult GitHub Copilot
2. Create a simple Dockerfile that installs and runs the react app
3. In `.github/workflows` create a `main.yml` file which builds the docker image and pushes it to the docker hub
    1. Use the `docker/login-action@v1` to login to the docker hub
    2. Use the `docker/build-push-action@v2` to build and push the docker image
4. Add necessary secrets to the GitHub repository
5. Push the changes to the repository
6. Forget to change some AI generated code and fix that
7. Push the changes to the repository
8. The image is now in the docker hub

## 21.02.2024

1. Create this file
2. Add the steps for the 31.01.2024
3. Request Assistance from GitHub Copilot to utilize the GitHub Container Registry
4. Update the `main.yml` file to push the image to the GitHub Container Registry
5. Push the changes to the repository
6. Gh actions can't push to the ghcr since GITHUB_TOKEN cannot crud in the ghcr
7. Create a PAT with the perms needed to push to the ghcr
8. Push again
9. The image is now in the ghcr
10. Add links to the ghcr and docker hub

## 28.02.2024

1. Research "git tagging" after it being mentioned by the teacher
2. Create a tag for the current version to try it out
3. To add tag create one and `git push origin 1.0.0` (tag)
4. Now the tag is visible in the releases tab of the
   repo (https://github.com/pcaracal/M324_Devops_CICD_Test/releases/tag/1.0.0)
5. Consult gh copilot on how to make the pipeline only run on a tagged push and modify the `main.yml`
6. Attempt to get the tag name and use it as the tag for the docker image
7. Try to implement automatic release create inside the workflow
8. Mistake: Trying to push first to tag and then master doesn't use latest code in workflow -> First have to push to
   master, and then push to tag
9. The GITHUB_TOKEN does not have access to create releases, -> create a PAT
10. Push and pray
11. It works: Upon pushing to a new tag, the pipeline runs and creates a docker image using the tag and creates a
    release which has a link to the docker image on ghcr

### AWS

1. Login, etc.
2. Read the document `12.2` and create new ECR named `refcard02`
3. Create secrets for the repo `AWS_ECR_REGISTRY` & `AWS_ECR_REPOSITORY`, and for aws login
4. Create AWS login code and and push to ECR
5. Push
6. Aws login fails because password is not masked, start reading the documentation
7. AWS Login finally works:
    - The login action can't take any inputs, must use *configure-aws-credentials* action to set the login credentials
      from secrets before the login action
    - Must have the session token as a secret in the configure action
8. The image is now in the ECR
9. Start research on how to use ECS
10. Create ECS cluster

## Links

- https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages
- https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-docker-registry
- https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry

- https://git-scm.com/book/en/v2/Git-Basics-Tagging
- https://github.com/aws-actions/amazon-ecr-login#docker-credentials
- https://github.com/aws-actions/configure-aws-credentials