FROM bitnami/tomcat
COPY 'C:\Users\NA\.jenkins\workspace\Maven_Project\target\*.war' /bitnami/tomcat/webapps/ebay.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
