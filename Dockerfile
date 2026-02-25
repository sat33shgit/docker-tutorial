FROM node:current-alpine

# Set working directory
WORKDIR /app

# Copy dependency manifests first for better caching
COPY package*.json ./

# Install only production dependencies
RUN npm install --production

# Copy application source
COPY . .

# Expose application port
EXPOSE 3002

# Start the app
CMD ["node", "src/server.js"]

