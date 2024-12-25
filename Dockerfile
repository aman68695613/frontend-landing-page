# Stage 1: Build the application
FROM node:20.12.0-alpine3.19

# Set the working directory
WORKDIR src/app
# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install
# Copy the rest of the app and build it
COPY . .
RUN npm run build
# Expose the port
EXPOSE 3000

# Start the application
CMD ["npm","run", "start"]
