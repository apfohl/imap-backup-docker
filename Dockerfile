FROM ruby:alpine

RUN gem install imap-backup

WORKDIR /root

COPY --chmod=755 ./entrypoint.sh /root/

ENTRYPOINT ["/root/entrypoint.sh"]

