# Use a Node.js base image
FROM node:16

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Install TypeScript globally
RUN npm install -g typescript

# Build the TypeScript code
RUN npm run build

# Expose port (change according to your server setup)
EXPOSE 3000

# Command to run the application
CMD ["node", "dist/index.js"]
