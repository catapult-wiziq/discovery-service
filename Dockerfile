FROM java:8

RUN mkdir -p /usr/src/app

#RUN mvnw package -DskipTests

ADD target/*.jar /usr/src/app/

WORKDIR /usr/src/app/

#RUN ./mvnw package -DskipTests

#CMD ["java","-jar","app.jar"]