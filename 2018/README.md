DataStax Developer's Notebook - Monthly Articles 2018
===================

| **[Monthly Articles - 2018](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/README.md)** | **[Monthly Articles - 2017](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2017/README.md)** |
|-------------------------|--------------------------|

This is a personal blog where we answer one or more questions each month from DataStax customers in a non-official, non-warranted, non much of anything forum. 

2018 October - - 

>Customer: My company is investigating using DataStax for our new Customer/360 system in our 
>customer call center. I am tasked with getting a simple (Hello World style) Java program 
>running against the DataStax server in a small Linux command line capable Docker container. 
>Can you help ?
>
>Daniel: Excellent question ! In the May/2018 edition of this document, we detailed how and 
>where to download a DataStax sponsored Docker container which includes the DataStax Enterprise 
>(DSE) server; boot and operate DSE. In the October/2017 edition of this document, we detailed 
>a DSE introduction, including table create, new data insert and query, and more.
>
>So, the only piece we are missing is the Java client program compile that targets DSE. To aid 
>in our compiling, we will document using the Apache Maven build automation tool. Inherently, 
>a given (any given) Java library will need other Java libraries, that themselves need more 
>Java libraries, rinse and repeat. It is best to automate resolution of this condition.
>
>We will install and configure all of the above, access the DSE server, and go home.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2018/DDN_2018_22_ClientSideDriver.pdf)
>

2018 September - - 

>Customer: My company is investigating using DataStax for our new Customer/360 system in our 
>customer call center. I’m a developer, and do not know how to administer DataStax Enterprise, 
>but, I need to know how to backup and restore tables for my programming and unit tests. Can 
>you help ?
>
>Daniel: Excellent question ! DataStax Enterprise (DSE) cab be backed up and restored using 
>DataStax Operations Center (DSE Ops Center), including activities to block stores like Amazon 
>S3, other. You can also perform sstabledump(s), and table unloads and loads, including bulk 
>unloads and loads.
>
>But, as you seek to perform these activities as part of your unit tests, we are going to detail 
>table backup and restore using snapshots; faster, less code, easily automated.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2018/DDN_2018_21_Backup%20and%20Recovery.pdf)
>
