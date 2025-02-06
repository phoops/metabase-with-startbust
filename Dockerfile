FROM metabase/metabase:v0.52.9.3
LABEL org.opencontainers.image.source=https://github.com/phoops/metabase-with-startbust

ADD https://github.com/starburstdata/metabase-driver/releases/download/6.0.0/starburst-6.0.0.metabase-driver.jar /plugins/starburst-6.0.0.metabase-driver.jar
RUN chown 2000:2000 /plugins/starburst-6.0.0.metabase-driver.jar && chmod 0664 /plugins/starburst-6.0.0.metabase-driver.jar
