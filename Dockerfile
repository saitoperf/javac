FROM ubuntu
RUN apt update && \
    apt install -y \
    default-jdk \
    tomcat9

# クラスパスには随時追加していく
ENV CLASSPATH="/usr/share/tomcat9/lib/servlet-api.jar"
WORKDIR /javac
ENTRYPOINT [ "javac" ]
CMD ["--version"]
