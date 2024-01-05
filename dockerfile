# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Define the default port as an argument (can be overridden during build)
ARG PORT=3000

# Set the environment variable PORT to the value of the ARG PORT
ENV PORT=$PORT

# Install PM2 globally
RUN npm install pm2 -g

# Copy package.json and package-lock.json
COPY package*.json ./

# Install any needed packages
RUN npm install

# Bundle app source
COPY . .

# Inform Docker that the container listens on the specified port at runtime
EXPOSE $PORT

# Define command to run the app using PM2
CMD ["pm2", "start app.yml"]
