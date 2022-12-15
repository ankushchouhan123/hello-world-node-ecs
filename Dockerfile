FROM node:17-alpine
WORKDIR /app
COPY . .
RUN chown node:node -R /app
RUN npm install
CMD ["sh", "-c", "npm run start:dev"]