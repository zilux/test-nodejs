# https://developer.hpe.com/blog/dockerizing-your-nodejs-based-backend-applications/
FROM ubi8/ubi

COPY . /tmp/hello-server

RUN dnf install -y nodejs

RUN cd /tmp/hello-server && npm install

CMD cd /tmp/hello-server && npm start
