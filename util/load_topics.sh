#/bin/bash

echo "load data local infile '${SAMPLE_DIR}/trtrivial.topics.csv' into table topics fields terminated by ',' optionally enclosed by '\"'" | mysql --local-infile -u root -p${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE}

