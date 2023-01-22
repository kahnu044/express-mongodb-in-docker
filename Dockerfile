FROM node:lts

WORKDIR /usr/src/app

ENV HOST=0.0.0.0
ENV PORT=7080

RUN chown -Rh node:node /usr/src/app


USER node
EXPOSE 7080

CMD [ "sh", "-c", "npm install && npm run dev" ]