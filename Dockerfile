# Use the official Node.js 16 Alpine image as the base image
FROM node:16-alpine

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all files and directories from the current directory (where Dockerfile resides) into the /app directory of the container
COPY . ./

# Install the 'serve' package globally inside the container using npm
RUN npm install -g serve

# Define the default command to run when the container starts:
# 'serve -s build' serves the static files from the 'build' directory
CMD ["serve", "-s", "build"]
