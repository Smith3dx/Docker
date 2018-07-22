FROM debian:stable 
MAINTAINER igbinosuneric <igbinosuneric@gmail.com>

RUN apt-get update && apt-get upgrade && apt-get install -y apache2 telnet elinks openssh-server

ENV MYVALUE my-value 

  
EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
