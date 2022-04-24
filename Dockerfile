#FROM openjdk:8-jdk
FROM openjdk:11-jdk
RUN apt-get update -y
RUN apt-get upgrade -y
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y
RUN service apache2 start
RUN apt-get install git -y
RUN git clone https://github.com/bejoypal/capstone-proj-food.git
RUN ls -ltr
RUN cp -r capstone-proj-food/* /var/www/html 
#COPY ./target/hotelproj-springboot-backend-2-0.0.1-SNAPSHOT.jar hotelproj-springboot-backend-2-0.0.1-SNAPSHOT.jar
#CMD ["java" ,"-jar","hotelproj-springboot-backend-2-0.0.1-SNAPSHOT.jar"]
#RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
#EXPOSE 8081
#-> Create a image for springboot webservice
# -->  Dockerfile 
#  - -> docker image build -t <imagetagname> .

#-> run container by using custom image
# -> docker container run  --name <hotelproj-springboot-backend-2> -p 8081:8081 -d <hotelproj-springboot-backend-2>


#-> verify log 
#  -> docker container log <container-name>

