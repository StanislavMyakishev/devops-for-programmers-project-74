FROM node:14.18.1-slim

WORKDIR /app

CMD ["bash", "-c", "npm test"]