#!/bin/bash

# install elastic search
curl -L -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.4.0-linux-x86_64.tar.gz
tar -xvf elasticsearch-7.4.0-linux-x86_64.tar.gz
# cd elasticsearch-7.4.0/bin
# ./elasticsearch

# Install Kibana
curl -L -O https://artifacts.elastic.co/downloads/kibana/kibana-7.4.0-linux-x86_64.tar.gz
tar xzvf kibana-7.4.0-linux-x86_64.tar.gz
# cd kibana-7.4.0-linux-x86_64/
# ./bin/kibana


# Install MetricBeat
curl -L -O https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.4.0-linux-x86_64.tar.gz
tar xzvf metricbeat-7.4.0-linux-x86_64.tar.gz
# cd metricbeat-7.4.0-linux-x86_64/
# ./metricbeat modules enable system
# ./metricbeat setup -e
# ./metricbeat -e

# Install Logstash
curl -L -O https://artifacts.elastic.co/downloads/logstash/logstash-7.4.0.tar.gz
tar -xzvf logstash-7.4.0.tar.gz