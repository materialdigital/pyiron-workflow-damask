FROM pyiron/damask:latest
USER root
COPY exec_notebooks.sh /exec_notebooks.sh
RUN chmod +x /exec_notebooks.sh && \
    chown -R root ${CONDA_DIR} && \
    pip install papermill

ENTRYPOINT ["/exec_notebooks.sh"]
