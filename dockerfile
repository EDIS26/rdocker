FROM node:11.10.0
RUN apt-get update \
    && apt-get install -y git
RUN git clone https://github.com/qxf2/qxf2-page-object-model.git
WORKDIR /rdocker
COPY rdocker .
RUN npm install

CMD ["npm", "start"]

EXPOSE 3000
