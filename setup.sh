#!/bin/bash

#download riak ts package
#sudo curl -LO http://s3.amazonaws.com/downloads.basho.com/riak_ts/1.4/1.4.0/rhel/7/riak-ts-1.4.0-1.el7.centos.x86_64.rpm
sudo curl -LO http://s3.amazonaws.com/downloads.basho.com/riak_ts/1.4/1.4.0/rhel/6/riak-ts-1.4.0-1.el6.x86_64.rpm

#install package
#sudo yum install -y riak-ts-1.4.0-1.el7.centos.x86_64.rpm
sudo yum install -y riak-ts-1.4.0-1.el6.x86_64.rpm

#start the node
sudo riak start
