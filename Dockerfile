FROM gannaert/ace12-server-only:latest
COPY bars /home/aceuser/bars
RUN export LICENSE="accept" \
    && cd /opt/ibm/ace-12/server/bin/ \
    && source ./mqsiprofile \
    && mqsibar -a /home/aceuser/bars/PingService.bar -c -w /home/aceuser/ace-server \
	&& find /home/aceuser/ace-server/run -type f  \


# Set user to prevent container running as root by default
USER 1000