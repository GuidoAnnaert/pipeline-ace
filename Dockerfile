FROM gannaert/ace12-server-only:latest
USER 1000
COPY bars /home/aceuser/bars
COPY bars /home/aceuser/initial-config/bars/
RUN export LICENSE="accept" \
    && cd /opt/ibm/ace-12/server/bin/ \
    && source ./mqsiprofile \
    && mqsibar -a /home/aceuser/bars/PingService.bar -c -w /home/aceuser/ace-server \
	&& find /home/aceuser/ace-server/run -type f  \