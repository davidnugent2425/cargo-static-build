FROM clux/muslrust:1.63.0-nightly-2022-06-25

COPY entrypoint.sh /entrypoint.sh
RUN apt-get update
RUN apt-get install -y p7zip-full

ENTRYPOINT ["/entrypoint.sh"]
