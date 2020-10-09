FROM nginx:latest
RUN apt-get update && apt-get install -y wget curl fontconfig nodejs npm iputils-ping vim net-tools -y && npm install -g broken-link-checker@^0.7.8 wait-on@^2.1.0
RUN mkdir /usr/share/nginx/html/images
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./images/cicd.jpeg /usr/share/nginx/html//images/cicd.jpeg
COPY ./test.sh /
RUN chmod +x /test.sh
