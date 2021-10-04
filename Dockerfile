FROM gannaert/ace12-server-only:latest
COPY bars /home/aceuser/bars
RUN export LICENSE="accept" \
    && source /opt/ibm/ace-12/server/bin/mqsiprofile \
    && mqsibar -a bars/PingService.bar -w /home/aceuser/ace-server \
   