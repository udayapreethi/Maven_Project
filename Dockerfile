FROM bitnami/tomcat
COPY ebay.war /bitnami/tomcat/webapps/ebay.war 
EXPOSE 8080
CMD ["catalina.sh", "run"]
