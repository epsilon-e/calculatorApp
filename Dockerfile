#BASE IMAGE
FROM openjdk:12
# make directory under this path 
RUN mkdir /usr/calculatorapp
# copy JAR file into that directory
COPY target/calculatorApp-0.0.1-SNAPSHOT.jar /usr/calculatorapp
# switch to that directory
WORKDIR /usr/calculatorapp
# run application with this command line 
 CMD ["java","-cp","calculatorApp-0.0.1-SNAPSHOT.jar:","first/calculatorApp/App"] 
 # CMD java - jar calculator-0.0.1-SNAPSHOT.jar3