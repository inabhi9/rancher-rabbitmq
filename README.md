rancher-rabbitmq
================
Auto cluster using rancher metadata. The base image is rabbitmq:3.6-management. 
This is image design to run in *Always run one instance of this container on every host*.
Hence removal of dead nodes must be taken out manually.

How it Works
============
It uses confd to poll container changes from rancher-metadata and modify rabbitmq.conf automatically 
(ref: https://github.com/ddmng/catalog-dockerfiles/tree/master/rabbitmq/0.1.0).

Support Environments
====================
It supports all environment variables of base image and addtional these variables


* **CONFD_ARGS**: Additional `confd` args along with default `--backend rancher --prefix /2015-07-25`
* **RABBITMQ_CLUSTER_PARTITION_HANDLING**: RabbitMQ's cluster handling setting. Default to `ignore`
* **RABBITMQ_NET_TICKTIME**: Default to `60`
* **RABBITMQ_CONF**: Override default confd rabbitmq template
