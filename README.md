DataStax Developer's Notebook - Monthly Articles 2021
===================

| **[Monthly Articles - 2021](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/README.md)** | **[Monthly Articles - 2020](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2020/README.md)** | **[Monthly Articles - 2019](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/README.md)** | **[Monthly Articles - 2018](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2018/README.md)** | **[Monthly Articles - 2017](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2017/README.md)** |
|-------------------------|--------------------------|--------------------------|--------------------------|--------------------------|

This is a personal blog where we answer one or more questions each month from DataStax customers in a non-official, non-warranted, non much of anything forum. 

December 2021 - -
>Customer: My company uses a ton of Apache Cassandra, and a ton of SnowFlake. We also want to move to writing applications using Node.js/REACT. 
>We’re having trouble understanding what each of Cassandra and SnowFlake should be used for together, and what a sample application might 
>look like. Can you help ?
>
>Daniel: Excellent question ! We’ll detail a sample application, written in Node.js and REACT, and then deliver an application that uses both 
>Apache Cassandra and SnowFlake.
>
>[Download December whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_60_SnowFlake.pdf)
>
>[Download Source Code in Tar Format here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_60_SnowFlake.tar)

November 2021 - -
>Customer: My company has been on DataStax Enterprise for some time. We are super excited by the new, open source StarGate (subsystem), 
>and what that provides. It appears as though StarGate only works with open source Apache Cassandra. Can you help ?
>
>Daniel: Excellent question ! We’ll overview what you are seeing, and how to get StarGate to work with DataStax Enterprise. We’ll also 
>detail a bit of the landscape; what’s moving around, how and why.
>
>[Download November whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_59_DseStargate.pdf)

October 2021 - -
>Customer: My company is investigating a backup and recovery solution for all of our applications running atop Kubernetes. Can you help ?
>
>Daniel: Excellent question ! In the past we’ve referenced the open source Velero project from a VMware acquisition, and we’ve mentioned 
>NetApp Astra (a SaaS). This month we detail installation and use of Kasten/Veeam K10. With (Kasten) you can backup and restore databases, 
>applications, and not only backup and restore, but also clone to aid your development efforts.
>
>In this article we backup and recover the DataStax Kubernetes Operator for Apache Cassandra, and backup, restore, and clone Cassandra
>Datacenter objects (entire Cassandra clusters).
>
>[Download October whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_58_KastenVeeam.pdf)

September 2021 - -
>Customer: My company has enjoyed the last two articles on DataStax K8ssandra, and specifically the StarGate component to same. 
>We’ve seen details on REST and the Document API, but little on GraphQL. Can you help ?
>
>Daniel: Excellent question !  We’ve done a number of articles in this series on GraphQL. Most recently, in October/2020, we 
>delivered a geo-spatial thin client Web program using GraphQL against the DataStax database as a service. When using Astra, 
>the database is hosted, managed. Also when using Astra, the service end points are automatically created and maintained, and 
>are, behind the scenes, using K8ssandra and StarGate.
>
>So, in this article, we supply the final and previously missing piece; how to access the GraphQL component of your own hosted 
>K8ssandra/StarGate.
>
>[Download September whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_57_K8ssandra%2C%20GraphQL.pdf)

August 2021 - -
>Customer: My company enjoyed the last article on K8ssandra and StarGate. We are highly interested in the Document API that this 
>document referred to; use and some of the design elements. Can you help ?
>
>Daniel: Excellent question ! Last month we installed DataStax K8ssandra, which includes the StarGate component. Further, we did 
>a (Hello World) using REST, to serve as an install/validate of StarGate. This month we dive deeper not into just REST, but now 
>the Document API area of StarGate; make a table, insert documents, run a query.
>
>[Download August whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_56_K8ssandra%2C%20Document%20API.pdf)

July 2021 - -
>Customer: My company is looking for ways to accelerate our application development, through whatever means. Can you help ?
>
>Daniel: Excellent question !  One of the areas we can look at are programming APIs/gateways. On some level, there are only 
>four things you can do with data; insert, update, delete, and select. As such, why aren’t all means to execute these statements 
>automatically generated, automatically managed and scaled, and more.
>
>On February 10, 2021, DataStax released the open source K8ssandra project, which includes these automated functions, and more. 
>In this article, we detail an introduction to K8ssandra; installation and use. In subsequent articles, we dive deeper into REST, 
>GraphQL, and Document API configuration and use.
>
>[Download July whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_55_K8ssandra.pdf)

June 2021 - -
>Customer: My company is investigating using the DataStax Atra Service Broker within our Kubernetes systems. Can you help ?
>
>Daniel: Excellent question ! In this document we will install and use most of the early pieces of the DataStax Astra Service broker; install, 
>install verification, connection, yadda. By accident then, we instroduce Kuberenetes service brokers, broker instances, and (broker instance)
>bindings.
>
>[Download June whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_54_AstraSvcBroker.pdf)

May 2021 - -
>Customer: My company enjoyed the series of four articles centered on Cassandra atop Kubernetes. But, you left Cassandra and the Operator limited to 
>just one namespace. We seek to run Cassandra clusters in many concurrent namespaces. Can you help ?
>
>Daniel: Excellent question ! In this edition of this document, we take the work from the previous 4 articles, and move them to a multiple namespace 
>treatment. We’ll detail using the Cassandra Operator across Kubernetes namespaces, and we’ll detail Cassandra cluster cloning across namespaces. Be 
>advised, there are relevant limitations with Kuberenetes version 1.18 and lower as it relates to (cloning) across namespaces. (Everything is do-able, 
>it’s just more steps than you might expect.)
>
>[Download May whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_53_MoreContainersHelm.pdf)
>
>[Download version 2.0 of the Toolkit for here, in Tar format](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_53_ToolkitVersion2.tar)
>
>[View a quick demo of Cassandra cluster cloning atop Kubernetes here](https://www.youtube.com/watch?v=paly5VVuAYM)

January 2021 thru April 2021 - -
>Customer: My company is moving its operations to the cloud, including cloud native computing and Kubernetes. I believe we can run Apache Cassandra 
>on Kubernetes. Can you help ?
>
>Daniel: Excellent question ! Kubernetes, and running Apache Cassandra on Kuberenetes are huge topics. As such, we’ll begin a four part series of articles that 
>cover most of the day one through day seven topics. We wont do a general Kuberentes primer, many other capable Kubernetes primers exist, but will list our 
>favorite resources here and there. 
>
>  • In the January article, we will get Apache Cassandra up and running on Kubernetes. 
>
>[Download January whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_49_KubernetesPrimer.pdf)
>
>  • In February, we detail recovery from failed/down Cassandra nodes.
>
>[Download February whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_50_KubernetesNodeRecovery.pdf)
>
>  • In March, we detail Cassandra cluster cloning, for QA and development. 
>
>[Download March whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_51_KubernetesClusterCloning.pdf)
>
>  • In April, we detail Kubernetes snapshotting in general.
>
>[Download April whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_52_KubernetesSnapshots.pdf)
>
>[Download the Toolkit for all 4 months/articles here, in Tar format](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2021/DDN_2021_KubernetesPrimer_Toolkit.tar)



