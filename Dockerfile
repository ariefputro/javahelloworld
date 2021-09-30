FROM java:8
LABEL org.opencontainers.image.source=https://github.com/ariefputro/javahelloworld.git
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
