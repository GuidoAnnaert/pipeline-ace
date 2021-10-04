FROM gannaert/ace12-server-only:latest
COPY bars /home/aceuser/bars
RUN export LICENSE="accept" \
    && source /opt/ibm/ace-11/server/bin/mqsiprofile \
    && mqsibar -a bars/PingService.bar -w /home/aceuser/ace-server \
    && /bin/bash -c 'find /home/aceuser/ace-server/run -type d -exec chmod -R 777 {} \;'
	
	docker build -t ace-server:12.0.x.y-r1-tfit12345 --build-arg BASE_IMAGE=ace-server:12.0.x.y-1 --build-arg IFIX_ID=12.0.X.Y-ACE-LinuxX64-TFIT12345 --file ubi/Dockerfile.ifix path/to/folder/containing/ifix
	
podman build -t ace-server  --build-arg deps/IBM_ACE_12.0.1.0_LNX_X8664_INCTK.tar.gz  --file ubi/Dockerfile.ifix
