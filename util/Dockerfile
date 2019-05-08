FROM mysql:5.5

COPY 01-init.sql \
     02-load-corpora.sh \
     03-load-topics.sh \
     04-load-qrels.sh \
     /docker-entrypoint-initdb.d/
COPY sample /docker-entrypoint-initdb.d/sample/
ENV MYSQL_ROOT_PASSWORD=secret \
    MYSQL_DATABASE=total_recall \
    SAMPLE_DIR=/docker-entrypoint-initdb.d/sample

