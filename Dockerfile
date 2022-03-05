FROM fusuf/whatsasena:latest

RUN git clone https://github.com/itsmebasil0/catbot /root/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit
RUN git clone https://github.com/itsmebasil8/pucha

CMD ["node", "bot.js"]

