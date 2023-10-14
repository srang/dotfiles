function mcis
  cd /home/srang/Corp/SPX/genfarecloud
  mvn clean install -pl :$argv -am -DskipDeployment
  vagrant ssh -c "
    cd /vagrant
    mvn jboss-as:deploy-only -pl :$argv
  "
end