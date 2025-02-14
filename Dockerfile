FROM	alpine:latest
LABEL	maintainer=jacob

RUN	apk --no-cache --update add \
	asterisk \
	asterisk-sample-config

CMD	["asterisk", "-fp"]

