FROM jasonrivers/nagios:latest

RUN mkdir /app
RUN mkdir -p /usr/local/nagios/etc \
  mkdir -p /usr/local/nagios/libexec 


ADD ./run.sh /app

RUN chmod +x /app/run.sh

CMD ["/app/run.sh"]