DataStax Developer's Notebook - Monthly Articles 2018
===================

| **[Monthly Articles - 2018](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/README.md)**| **[Data Downloads](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/data_download/README.md)** |
|-------------------------|--------------------------|

This is a personal blog where we answer one or more questions each month from DataStax customers in a non-official, non-warranted, non much of anything forum. 

2018 February-

>Customer: My company was invited to participate in the DataStax Enterprise (DSE) 6.0 early 
>release program. From discussions with DataStax, we learned there are a number of changes 
>related to CQL native processing of DSE Search commands. Can you help us understand what 
>this means ?
>
>Daniel: Excellent question ! On February 1, 2018, DataStax began accepting self nominations 
>to the DSE release 6.0 Early Access Process (EAP) at the following Url,
>
>https://academy.datastax.com/eap?destination=eap
>
>When your nomination is accepted, you receive early access to the DSE version 6.0 software 
>and documentation. In return, you are asked to formally test this release and participate 
>in feedback relative to your experiences. The 6.0 release is huge, with many topics far 
>larger than CQL native processing of DSE Search commands; this is a very cool, and strategic 
>release.
>
>In this document, we detail the DSE Core and DSE Search areas of functionality, their intent, 
>how they work pre release 6.0, and are planned to work in the 6.0 release. Further we detail:
>
>• The four functional areas of DSE, including DSE Core with its network partition fault tolerance and time constant lookups.
>• We detail B-Tree+ and hash lookups, and which scale and why.
>• We define the DSE primary key, including its partitioning key and clustering key parts.
>• We detail what makes a query a DSE Core query versus a DSE Search query.
>• We highlight the new CQL native processing of DSE Search commands.
>• We overview DSE materialized views, and secondary indexes.
>• We detail how to add and drop table columns, and inform DSE Search indexes of same.
>• And we overview how to observe asynchronous/background index builds.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2018_14_CQL-Search.pdf)
>

2018 January - -

>Customer: My company is investigating using the DataStax advanced replication feature to 
>move data between data centers. Can you help ?
>
>Daniel:
>Excellent question ! In this document we overview DataStax Enterprise (DSE) data replication, 
>advanced replication, and even recovery and diagnosis from failure of each of these sub-systems. 
>Also, since advanced replication falls into an area of DataStax Enterprise titled, ‘advanced 
>functionality’, we overview this topic as well.
>
>Just to be excessively chatty, we also detail DataStax Enterprise triggers and create yet 
>another user defined function (UDF). (UDFs were a topic we covered in last month’s edition of 
>this document.)
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2018_13_AdvRep.pdf).
>
>[Resource kit](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2018_13_AdvRep.tar),
>all of the programs and data used in this edition in Tar format.
>

2017 December - - 

>Customer: As my company is beginning significant development of new applications that target 
>the DataStax Enterprise database server (DSE), we are starting to explore some of the 
>programability that DSE offers us. Specifically, we are very much interested in user defined 
>functions (UDFs). Can you help ?
>
>Daniel:
>Excellent question ! The topic of server side database programming can devolve into one of 
>those information technology religious arguments, something we generally seek to avoid. Still, 
>DataStax Enterprise (DSE) does offer user defined functions (UDFs), user defined aggregates 
>(UDAs), and user defined types (UDTs).
>
>Recall that a core value proposition which DSE delivers is time constant lookups, that is; 
>a CQL (Cassandra query language, similar to structured query language, SQL) SELECT, UPDATE 
>or DELETE that uses an equality on at least the partition key columns from the primary key. 
>These are the linearly scalable operations that DSE is distinguished for. If you seek to do 
>aggregates or other set operands on large data sets (online analytics style processing, OLAP), 
>DSE will likely need to perform a scatter gather query (a query that reads from multiple 
>concurrent nodes). Inherently, these types of queries do not perform in low single digit 
>millisecond time; just be advised.
>
>In this edition of this document we will detail all that you ask; user defined functions, 
>and also user defined aggregates and user defined types, and we’ll write application code 
>for each.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2017_12_UDFs.pdf).
>

2017 November - -

>Customer:
>My company wants to deliver a, "customers who bought (x) also bought (y)" functionality to our
>Web site. Can the DataStax database server help me do this ?
>
>Daniel:
>Excellent question ! In this document we deliver all of the program code, sample data, and
>instructions to deliver a recommendation engine ("customers who bought (x) bought (y) ..")
>using DataStax Enterprise (DSE) and its Analytics Function powered by Apache Spark.
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


