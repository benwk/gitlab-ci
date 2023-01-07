FROM alpine:latest

LABEL delay.quiplaw.image.authors="ben@delay.work"

RUN command -v ssh-agent >/dev/null || ( apk add --update openssh )
RUN mkdir -p ~/.ssh \
    && chmod 700 ~/.ssh \
    && echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config