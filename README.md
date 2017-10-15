Last login: Mon Oct  9 05:16:19 on console
farrell0s-MacBook-Pro:~ farrell0$ vi
































































DataStax Developer's Notebook - Monthly Articles 2017
===================

| **[Monthly Articles - 2017](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/README.md)**| **[Data Downloads](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/data_download/README.md)** |
|-------------------------|--------------------------|

This is a personal blog where we answer one or more questions each month from DataStax customers in a non-official, non-warranted, non much of anything forum. 

2017 November - -

>Customer:
>My company wants to deliver a, "customers who bought (x) also bought (y)" functionality to our
>Web site. Can the DataStax database server help me do this ?
>
>Daniel:
>Excellent question ! In this document we deliver all of the program code, sample data, and
>instructions to deliver a recommendation engine ("customers who bought (x) bought (y) ..")
>using DataStax Enterprise (DSE) and its Analytics function powered by Apache Spark.
>
>First we code the solution by hand in Python, so you have the ability to fully dissect all
>of the processing logic (master the Apriori algorithm). Then we move to using the supported
>and parallel capable Spark FPGrowth library in both Python and Scala.
>
>Along the way we install Scala, Gradle, and use support functions like the DSE parallel
>filesystem. We supply a 1.7 MB Tar ball with all data and programming.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2017_11_Apriori.pdf).
>
>[Resource Kit](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2017_11_Apriori.tar),
>all of the programs and data used in this edition in Tar format.
>

2017 October - -

>Customer:
>My company is investigating using DataStax for our new Customer/360 system in our customer call 
>center. I haven’t learned a new database in over 10 years, and should mention that I know none 
>of the NoSQL (post relational) databases. Can you help ?
>
>Daniel:
>Excellent question ! We’ve expertly used a good number of the leading NoSQL databases and while 
>DataStax may take longer to master than some, DataStax is easily more capable (functionally, and 
>scalability wise), than any other systems we have experienced.
>
>DataStax supports operational AND analytics workloads on one integrated platform, offers no single 
>point of failure, is proven to scale past 1000 nodes, and is enterprise ready with all of the requisite 
>security and administrative (maintenance and self healing) features.
>
>In this document we will:
>
>• Walk through a reasonably complete primer on DataStax Enterprise (DSE) terms, its object hierarchy, history, use, operating conventions, configuration files, and more.
>
>• Build a 2 node DSE cluster from scratch with a NetworkTopologyStrategy. 
>
>• Demonstrate network partition failure tolerance.
>
>• Demonstrate strong and eventual consistency.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2017_10_DsePrimer.pdf).
>

