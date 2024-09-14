FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose the port the app runs on (adjust if necessary)
EXPOSE 3000

# Command to start the app (replace with your start command if different)
CMD [ "npm", "start" ]
