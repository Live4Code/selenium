FROM 1science/java:oracle-jre-7

RUN  mkdir -p /opt/selenium \
  && wget --no-verbose http://selenium-release.storage.googleapis.com/2.46/selenium-server-standalone-2.46.0.jar -O /opt/selenium/selenium-server-standalone.jar

EXPOSE 4444

CMD java -jar /opt/selenium/selenium-server-standalone.jar -role hub

