FROM testcafe/testcafe:1.9.3
LABEL maintainer="DevRel <devrel@mallgroup.com>"
LABEL org.opencontainers.image.source="https://github.com/whoopsmonitor/whoopsmonitor-check-testcafe"

LABEL com.whoopsmonitor.documentation="https://github.com/whoopsmonitor/whoopsmonitor-check-testcafe"

ENV WM_CHECK_ID=${WM_CHECK_ID:-NOT_DEFINED}
ENV WM_BROWSER=${WM_BROWSER:-chromium}
ENV WM_ORIGINAL_ENTRYPOINT=/opt/testcafe/docker/testcafe-docker.sh
ENV WM_WORKER_DIR=/whoopsmonitor-worker

USER root

COPY entrypoint.sh /opt/whoopsmonitor-check-testcafe/entrypoint.sh
RUN chmod +x /opt/whoopsmonitor-check-testcafe/entrypoint.sh

USER user

ENTRYPOINT ["/opt/whoopsmonitor-check-testcafe/entrypoint.sh"]
