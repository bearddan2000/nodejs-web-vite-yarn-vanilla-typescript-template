FROM node

WORKDIR /workspace

RUN npm i -g npm@latest

WORKDIR /code

COPY bin .

RUN npm i

# For doc purpose only
# RUN yarn create vite <app_name> --template vanilla-ts

CMD "yarn dev"