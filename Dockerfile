FROM skyblue1294/pyku_mysql
MAINTAINER JUNHO.Lee<skyblue1294@126.com>
ENV REFRESHED_AT 2018-06-19
RUN apt-get -yqq update
#RUN apt-get install -y wget
#RUN wget http://dev.mysql.com/get/mysql-apt-config_0.8.0-1_all.deb
#RUN apt-get update #important
#RUN ["apt-get" ,"install","-y","mysql-server"]
RUN echo 'service mysql restart' >> /root/.bashrc
RUN echo 'defaulf-character-set=utf8' >> /etc/mysql/conf.d/mysql.cnf
RUN echo '[mysqld]' >> /etc/mysql/conf.d/mysql.cnf
RUN echo 'character-set-server=utf8' >> /etc/mysql/conf.d/mysql.cnf
