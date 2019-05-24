FROM hypriot/rpi-node:8
EXPOSE 80
##RUN addgroup node
##RUN useradd -d /home/node -e 2019-05-08 node
##RUN usermod -g node node
RUN mkdir -p /home/node/app2/node_modules
## && chown -R node:node /home/node/app2
COPY ./ /home/node/app2
WORKDIR /home/node/app2
#USER node
ENV PORT 8080
RUN npm install
CMD ["node","main.js"]

