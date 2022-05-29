# Base-image: start with tomcat:8
# 1. build Docker image: docker build -t asd .
# 2. scan it: snyk container test asd --file=Dockerfile or docker scan asd --file=Dockerfile
FROM tomcat:8

# install yum:
RUN yum install -y wget-1.14-15.el7_4.1.x86_64; yum clean all

COPY hello.jsp /usr/local/tomcat/webapps/ROOT/hello.jsp
