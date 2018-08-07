FROM instrumentisto/rsync-ssh

MAINTAINER hachi.zzq@gmail.com

COPY rsync_mirror /etc/periodic/15min/rsyncmirror

RUN chmod a+x /etc/periodic/15min/rsyncmirror &&\
	mkdir -p /share


VOLUME ["/share"]

CMD ["crond","-f"]

