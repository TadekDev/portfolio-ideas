FROM node:18-alpine

WORKDIR /workspace

COPY . ./

RUN npm i
RUN npm run docs:build

EXPOSE 4173

CMD ["npm", "run", "docs:serve"]
