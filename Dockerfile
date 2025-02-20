FROM	alpine:latest
LABEL	maintainer=jacob

RUN	apk --no-cache --update add \
	asterisk \
	asterisk-sample-config \
	asterisk-sounds-en

COPY config/sip.conf /etc/asterisk/sip.conf
COPY config/extensions.conf /etc/asterisk/extensions.conf
COPY config/pjsip.conf /etc/asterisk/pjsip.conf
COPY config/rtp.conf /etc/asterisk/rtp.conf

CMD	["asterisk", "-fpvvvv"]

