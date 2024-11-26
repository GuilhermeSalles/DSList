# Etapa 1: Construção do projeto
FROM maven:3.8.4-eclipse-temurin-17 as build

WORKDIR /app
COPY pom.xml /app
RUN mvn dependency:go-offline

COPY src /app/src
RUN mvn clean install -DskipTests

# Etapa 2: Imagem para execução
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app
COPY --from=build /app/target/dslist-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
