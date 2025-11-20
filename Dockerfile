FROM node:10.8.0-jessie

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application source
COPY . .

# Expose port (adjust if needed)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
