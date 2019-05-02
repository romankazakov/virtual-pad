FROM node:8
EXPOSE 80
RUN apt update && apt install git python && git clone https://github.com/miroof/node-virtual-gamepads /home/node/app2 
RUN mkdir -p /home/node/app2/node_modules && chown -R node:node /home/node/app2
WORKDIR /home/node/app2
USER node
ENV PORT 8080
RUN npm install
CMD ["node","main.js"]

