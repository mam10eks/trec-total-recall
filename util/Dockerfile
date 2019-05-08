FROM mysql:5.5

COPY tr.db.template /docker-entrypoint-initdb.d/01-init.sql
COPY load_corpora.sh /docker-entrypoint-initdb.d/02-load-corpora.sh
COPY load_topics.sh /docker-entrypoint-initdb.d/03-load-topics.sh
COPY load_qrels.sh /docker-entrypoint-initdb.d/04-load-qrels.sh
COPY sample /docker-entrypoint-initdb.d/sample/
ENV MYSQL_ROOT_PASSWORD=secret
ENV MYSQL_DATABASE=total_recall
ENV SAMPLE_DIR=/docker-entrypoint-initdb.d/sample

