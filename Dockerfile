FROM nginx:1.21

RUN apt update
RUN apt install -y \
        p7zip-full

COPY ./install-rclone_20211227.sh /
RUN bash /install-rclone_20211227.sh

EXPOSE 53682