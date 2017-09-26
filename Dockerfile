FROM centos/nodejs-4-centos7
LABEL maintainer "jeanfrancois.cunat@orange.com"
USER root
RUN yum -y install gcc make ruby ruby-devel rubygems && yum clean all -y
RUN gem install --no-rdoc --no-ri compass
RUN chown -R 1001:0 /opt/app-root && chmod -R ug+rwx /opt/app-root
USER 1001