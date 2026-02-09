FROM eclipse-temurin:11-jdk-jammy
ADD jarstaging/com/valaxy/demo-workshop/2.1.2 ttrend.jar
ENTRYPOINT [ "java", "-jar", "ttrend" ]


