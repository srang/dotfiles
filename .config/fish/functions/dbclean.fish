function dbclean
  cd /home/srang/Corp/SPX/genfarecloud/support
  mvn flyway:clean -Dflyway.schemas='cdta,test'
  mvn flyway:baseline -Dflyway.schemas='cdta'
  mvn flyway:baseline -Dflyway.schemas='test'
  mvn clean install
  mvn mongo-migrate:clean
  mvn mongo-migrate:migrate;
  ..
end
