FROM openjdk:8-jdk-slim
ADD jarstaging/com/valaxy/demo-workshop/2.1.2/demo-workshop/2.1.2 ttrend.jar
ENTRYPOINT [ "java", "-jar", "ttrend" ]


