FROM java:8
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld

ENV FOO bar

RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

RUN apt-get install -y curl wget

ENTRYPOINT [ "java" , "-cp" , "bin" , "HelloWorld" ]
