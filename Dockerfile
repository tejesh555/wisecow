FROM ubuntu
RUN apt update -y && apt install fortune-mod cowsay netcat -y
COPY ./wisecow.sh .
ENV PATH "${PATH}:/usr/games"
EXPOSE 4499
CMD ["sh", "wisecow.sh"]

