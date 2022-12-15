FROM node:17-alpine
WORKDIR /app
COPY . .

RUN chown node:node -R /app
EXPOSE 80

USER node
RUN npm install
CMD ["sh", "-c", "npm run start:dev"]