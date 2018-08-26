#!/bin/bash



mkdir -p src/main/java 	              #   Application/Library sources
mkdir -p src/main/java/domain
mkdir -p src/main/java/repository
mkdir -p src/main/java/dao
mkdir -p src/main/java/servlets
mkdir -p src/main/java/
mkdir -p src/main/utils/
mkdir -p src/main/controllers/

mkdir -p src/main/resources           #	Application/Library resources
mkdir -p src/main/resources/META-INF
mkdir -p src/main/filters 	          #   Resource filter files
mkdir -p src/main/webapp 	            #   Web application sources
mkdir -p src/main/webapp/WEB-INF
mkdir -p src/test/java 	              #   Test sources
mkdir -p src/test/resources 	        #   Test resources
mkdir -p src/test/filters 	          #   Test resource filter files
mkdir -p src/it 	                    #   Integration Tests (primarily for plugins)
mkdir -p src/assembly 	              #   Assembly descriptors
mkdir -p src/site                     #   Site

touch src/main/resources/META-INF/presistence.xml
touch src/main/resources/log4j2.xml
touch src/main/webapp/WEB-INF/web.xml
touch src/main/webapp/WEB-INF/jboss-web.xml
touch pom.xml


