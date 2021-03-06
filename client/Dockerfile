#基于alpine镜像制作
FROM alpine
WORKDIR /root
COPY *.sh /root/
RUN sh init.sh
EXPOSE 1080
EXPOSE 8080
CMD /root/run.sh