function mcis
  cd /home/srang/Corp/SPX/genfarecloud
  mvn clean install -pl :$argv -am -DskipDeployment
end