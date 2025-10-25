FROM node:20-alpine
WORKDIR /app

# Copy package.json and install deps first for caching
COPY package*.json ./
RUN npm install

# Copy the rest of the files
COPY . .

# Build TypeScript
RUN npm run build

# Expose the port
EXPOSE 4000

# Run the compiled JS
CMD ["npm", "run", "start"]
