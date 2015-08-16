function mob
  cd /home/srang/Corp/SPX/genfarecloud
  mvn clean install -pl :$argv -DskipDeployment
end

