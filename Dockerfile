FROM telegraf
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
        sudo smartmontools \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && echo 'telegraf ALL=(ALL) NOPASSWD:/usr/sbin/smartctl' >> /etc/sudoers
