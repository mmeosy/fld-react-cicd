# Use an existing Node.js image as the base
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json file to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the files to the container
COPY . .

# Specify the command to run the app
CMD ["npm", "start"]
