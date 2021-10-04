FROM gannaert/ace12-server-only:latest
COPY bars /home/aceuser/bars
RUN export LICENSE="accept" \
	&& sudo usermod -a -G sudo aceuser
    && cd /opt/ibm/ace-12/server/bin/ \
    && source ./mqsiprofile \
    && mqsibar -a /home/aceuser/bars/PingService.bar -c -w /home/aceuser/ace-server \
	&& sudo chmod -R 777 /home/aceuser \
	&& find /home/aceuser/ace-server/run -type f  \