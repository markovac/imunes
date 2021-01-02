FROM imunes/template

WORKDIR /root

RUN apt update 
RUN apt install -y gcc g++ make libssl-dev 
COPY mosquitto-1.6.0.tar.gz .
RUN tar -xvf mosquitto-1.6.0.tar.gz 
RUN make -C mosquitto-1.6.0/
RUN make -C mosquitto-1.6.0/ install
COPY mosquitto.conf .
RUN mkdir /var/log/mosquitto
RUN touch /var/log/mosquitto/mosquitto.log
RUN ln -fs /proc/self/fd/1 /var/log/mosquitto/mosquitto.log 

CMD mosquitto -v -c /root/mosquitto.conf

