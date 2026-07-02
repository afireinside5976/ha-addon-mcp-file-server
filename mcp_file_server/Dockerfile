ARG BUILD_FROM
FROM ${BUILD_FROM}

# Install Python deps directly (no venv - Python 3.12 in this base)
COPY app/requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

COPY app/ /app/
COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
