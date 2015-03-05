FROM binhex/arch-base:2015030300
MAINTAINER binhex

# additional files
##################

# add supervisor conf file for app
ADD sonarr.conf /etc/supervisor/conf.d/sonarr.conf

# add install bash script
ADD install.sh /root/install.sh

# add packer bash script
ADD packer.sh /root/packer.sh

# install app
#############

# make executable and run bash scripts to install app
RUN chmod +x /root/install.sh /root/packer.sh && \
	/bin/bash /root/install.sh

# docker settings
#################

# map /config to host defined config path (used to store configuration from app)
VOLUME /config

# map /data to host defined data path (used to store downloads or use blackhole)
VOLUME /data

# map /media to host defined media path (used to read/write to media library)
VOLUME /media

# expose port for http
EXPOSE 8989

# run supervisor
################

# run supervisor
CMD ["supervisord", "-c", "/etc/supervisor.conf", "-n"]