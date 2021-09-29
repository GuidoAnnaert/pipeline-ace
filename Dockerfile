FROM ibmcom/ace-server:latest
COPY bars /home/aceuser/bars
RUN export LICENSE="accept" 
RUN source /opt/ibm/ace-11/server/bin/mqsiprofile 
RUN mqsibar -a bars/PingService.bar -w /home/aceuser/ace-server 
USER ROOT
RUN find /home/aceuser/ace-server/run -type d -exec chmod -R 777 {} ;
