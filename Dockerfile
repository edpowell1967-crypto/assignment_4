# Use Node.js version 16 as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Make port 3000 available
EXPOSE 3000

# Start the application
CMD ["npm", "start"]