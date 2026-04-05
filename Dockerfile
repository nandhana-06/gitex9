FROM node:18

WORKDIR /app

# Copy only package files first (better practice)
COPY package*.json ./

RUN npm install

# Then copy remaining files
COPY . .

CMD ["npm", "start"]