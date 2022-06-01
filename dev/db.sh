mysql -u admin -p << EOF
DROP DATABASE test;
CREATE DATABASE test;
EOF

cat schema.sql | mysql --force -u admin -p test
