FROM docker.io/elastic/metricbeat:6.7.2
ENV REDIS_HOSTS=redis_db:6379
COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml

USER root
RUN chown root:metricbeat /usr/share/metricbeat/metricbeat.yml
USER metricbeat
RUN cat /usr/share/metricbeat/metricbeat.yml
