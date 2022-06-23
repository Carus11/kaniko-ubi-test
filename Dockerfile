FROM registry.access.redhat.com/ubi8

RUN useradd -ms /bin/bash testuser
RUN chown testuser:testuser /modules
USER testuser
ENV SAS_SCR_APP_PATH=/df_main_collections2_0
COPY --chown=testuser:testuser unzipped/ /modules/
COPY --chown=testuser:testuser manifest/ /manifest/
