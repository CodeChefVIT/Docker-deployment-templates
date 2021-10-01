FROM node:latest
ENV NODE_ENV=production

# Defining the Work Directory
WORKDIR /app

# Copy package.json
COPY ["package.json", "package-lock.json*", "./"]

# Installing the Node Modules
RUN npm install --production

# Copy current build to Image
COPY . .

# Expose the Running Port
EXPOSE  3000

# Run the Server from Outdir in tsconfig
CMD [ "node", "build/src/app.js" ]