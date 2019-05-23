FROM debian:sid

RUN apt-get update && apt-get install -y curl xvfb x11vnc firefox-esr python3 python3-pip

RUN curl -sL https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz \
    | tar xzvC /usr/local/bin

RUN pip3 install selenium

# RUN apt-get update && apt-get install -y unzip chromium
# RUN curl -sL https://chromedriver.storage.googleapis.com/74.0.3729.6/chromedriver_linux64.zip \
#     -o chromedriver.zip && unzip chromedriver.zip -d /usr/local/bin

RUN apt-get update && apt-get install -y fluxbox

ENV DISPLAY=:0

ADD ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
