#!/bin/sh -ex
kubectl get svc postgres
kubectl cluster-info
echo 'Enter ip to connect.'
read ip
echo 'Enter port to connect.'
read port
psql -h $ip -U postgresadmin --password -p $port postgresdb
