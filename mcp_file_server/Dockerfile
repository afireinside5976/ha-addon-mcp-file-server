ARG BUILD_FROM
FROM ${BUILD_FROM}

# Python 3.12 already in base image
RUN python3 -m venv /opt/venv && /opt/venv/bin/pip install --upgrade pip

COPY app/requirements.txt /tmp/requirements.txt
RUN /opt/venv/bin/pip install --no-cache-dir --extra-index-url https://wheels.home-assistant.io/musllinux-index/ -r /tmp/requirements.txt

COPY app/ /app/
COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
