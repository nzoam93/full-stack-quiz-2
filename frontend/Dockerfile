# Use an official Node.js image as the base image
FROM node:latest

# Set the working directory in the container
WORKDIR /frontend_app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application code to the container
COPY . .

# Build the React application
RUN npm run build

# Expose the port where the application will run
EXPOSE 3000

# Start the application
CMD ["npm", "start"]