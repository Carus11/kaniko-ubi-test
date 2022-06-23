FROM registry.access.redhat.com/ubi8

#RUN useradd -ms /bin/bash testuser
#USER testuser
ENV SAS_SCR_APP_PATH=/api_path
#COPY --chown=testuser:testuser unzipped/ /modules/
#COPY --chown=testuser:testuser manifest/ /manifest/
COPY unzipped/ /modules/
COPY manifest/ /manifest/
