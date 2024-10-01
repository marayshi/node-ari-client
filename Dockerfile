# Use the official Node.js LTS image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code (this will be overridden by the volume)
COPY . .

# Expose any ports if necessary (optional)
# EXPOSE 3000

# Command to keep the container running
CMD [ "tail", "-f", "/dev/null" ]
