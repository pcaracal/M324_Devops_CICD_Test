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

## Links

- https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages
- https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-docker-registry
- https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry