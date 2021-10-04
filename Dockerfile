FROM gannaert/ace12-server-only:latest
COPY bars /home/aceuser/bars
RUN export LICENSE="accept" \
    && source /opt/ibm/ace-12/server/bin/mqsiprofile \
    && mqsibar -a /home/aceuser/bars/PingService.bar -c -w /home/aceuser/ace-server \
   