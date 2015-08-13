#!/bin/bash
#current host
cur=$HOSTNAME

rm -f ~/.keystore
rm -f ~/cassandra$cur.cer

#Generate the private and public key pair for the nodes of the cluster.
keytool -genkey -keyalg RSA -alias cassandra_$cur -dname "cn=zhangren" -keypass mg2014  -keystore ~/.keystore -storepass mg2014 -validity 30

#Export the public part of the certificate to a separate file and copy these certificates to all other nodes
keytool -export -alias cassandra_$cur -file ~/cassandra$cur.cer -keystore ~/.keystore

#Add the certificate of each node to the truststore of each node, so nodes can verify the identity of other nodes.
keytool -import -v -trustcacerts -alias cassandra_$cur -file ~/cassandra$cur.cer -keystore ~/.truststore


#all hosts
for name in $*
do
    if [ $HOSTNAME = $name ]; 
    then
        continue;
    fi


    scp ~/.truststore magneto@$name:~/
done
