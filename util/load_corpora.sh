#/bin/bash

echo "load data local infile '${1}' into table corpora fields terminated by ',' optionally enclosed by '\"'" | ${2} --local-infile
