#!/bin/bash

for file in ${SAMPLE_DIR}/qrels/*.csv
do
  fn=$(basename ${file} .csv)
  echo "create table judgments_${fn} (docid text, topid text, rel integer, index (docid(40),topid(40),rel));"
  echo "load data local infile '${file}' into table judgments_${fn} fields terminated by ',';"
done | mysql --local-infile -u root -p${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE}

