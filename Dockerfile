FROM eclipse-temurin:11-jdk-jammy

ADD jarstaging/com/valaxy/demo-workshop/2.1.2/demo-workshop-2.1.2.jar ttrend.jar

CMD ["java","-jar","ttrend.jar"]




