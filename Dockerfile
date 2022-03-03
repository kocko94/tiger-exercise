FROM node:latest

ARG WORK_FOLDER=/code
WORKDIR $WORK_FOLDER
COPY . $WORK_FOLDER

EXPOSE 10345

RUN npm install -g @angular/cli @angular-devkit/build-angular && npm install

CMD ["npm", "start"]
