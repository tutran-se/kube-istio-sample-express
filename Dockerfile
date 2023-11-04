# Use Node 
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies for production
RUN npm install --only=production

# Copy the rest of the files
COPY . .

# Start the app
CMD ["npm", "run", "start"]
