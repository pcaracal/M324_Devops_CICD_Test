# Step 1: Specify the base image
FROM node:14-alpine

# Step 2: Set the working directory in the Docker image
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json files into the Docker image
COPY package*.json ./

# Step 4: Install the application dependencies
RUN npm install

# Step 5: Copy the rest of your application's source code into the Docker image
COPY . .

EXPOSE 3000

# Step 6: Specify the command to start the application
CMD ["npm", "start"]