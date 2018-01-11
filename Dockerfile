FROM openjdk:8
ADD target/spring-boot-web-jsp-1.0.jar spring-boot-web-jsp-1.0.jar
EXPOSE 8082
ENTRYPOINT ["java","-jar","spring-boot-web-jsp-1.0.jar"]

sed -i "s/IMAGE/$(Build.BuildNumber)/" Deployment.yaml

---- BEGIN SSH2 PUBLIC KEY ----
Comment: "rsa-key-20171222"
AAAAB3NzaC1yc2EAAAABJQAAAQEAnefd6rVr5bhoVRHCMtgNtGWh1O4PsLeUxuFB
LvM+Qgs8UOzPhWo8Mk5Q7Nne/wAY1iHhzQ0JKldK39upC2snIvwXEMNJuCZkwX/2
VMOckCNhqoIyDmc/hxrIlA/E10Md9h66xrtqMvlwffdziL/I+DYXbRhD4qSWYRed
7RjLOHfPRd1iEtJY3IwTcFIhyJPNVw43Wa+sxpdHVL76ra/PYUCZgGK+NTvUa4Y2
PG3cnYIqlHNJQ4XndvAr55VYyrwNquVEgjr4UIPtqnwPu1IUMeayrD1XYAYozFWu
qGjxOVW136GIXGEZqbjiK9+Mo3zMryx32Sax0aRcBWJH+pua7w==
---- END SSH2 PUBLIC KEY ----
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/2f0a6792-ed2f-4f12-9180-c27cf52e6328/resourceGroups/HondaCluster"

FROM corefb
WORKDIR /app
COPY --from=build-env /app/out .
COPY filebeat.yml /etc/filebeat/filebeat.yml
COPY startup.sh /usr/bin
RUN chmod +x /usr/bin/startup.sh
ENTRYPOINT ["/usr/bin/startup.sh"]

#!/bin/bash
nohup /usr/bin/filebeat &>/tmp/filebeat.log &
dotnet ARBUserManagement.dll


 "ConnectionString": "Data Source=52.224.178.51;Initial Catalog=ARB_Develop;User ID=hondadb;Password=Welcome@1234;Connection Timeout=100"

Java AppInsights
3eae2b7a-5a79-4432-8950-298872e32648
Dot Net AppInsights
004dc0d4-24ef-42a5-b181-97712f537222

dotnetcoreregistry.azurecr.io
OiI=FIH+7ox7QIVFNaJmwSs37JBK9ZX4
