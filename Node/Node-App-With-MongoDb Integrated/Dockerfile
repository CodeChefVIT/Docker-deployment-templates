FROM node:latest

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

# Create a Directory 
RUN mkdir -p /home/app

# Copy your code to Image
COPY ./app /home/app

# Set the Working Directory
WORKDIR /home/app

# Download the Essential Node Packages
RUN npm install

# Expose the Working Port for the Application
EXPOSE 3000

# Run the Application
CMD ["node", "server.js"]