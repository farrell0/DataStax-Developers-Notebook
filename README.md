DataStax Developer's Notebook - Monthly Articles 2018
===================

| **[Monthly Articles - 2018](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/README.md)** | **[Monthly Articles - 2017](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2017/README.md)** |
|-------------------------|--------------------------|

This is a personal blog where we answer one or more questions each month from DataStax customers in a non-official, non-warranted, non much of anything forum. 

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
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2018_21_Backup%20and%20Recovery.pdf)
>

2018 August - -

>Customer: My company is investigating using DataStax for our new Customer/360 system in our 
>customer call center. I’m a developer, and do not know how to administer DataStax Enterprise, 
>but, I need to know how to set up user authentication and authorization for my programming 
>and unit tests. Can you help ?
>
>Daniel: Excellent question ! Setting up authentication and authorization using DataStax 
>Enterprise (DSE) is super easy. Below we detail all of the relevant topics and steps to 
>achieve same, including source code for all. We detail table level access control, and in 
>the event you need it, row level access control.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2018_20_Security.pdf)
>

2018 July - -

>Customer: I inherited an existing DataStax Enterprise (DSE) server system, and users are 
>complaining about performance. I know nothing about DSE, and need to make the users happy. 
>Can you help ?
>
>Daniel: Excellent question ! Based on your timeline (how quickly and safely does this problem 
>need to be solved), you should probably contact DataStax for assistance. If you were already 
>trained/capable on DSE and wanted to solve this problem, this document will cover introductory 
>topics related to that goal.
>
>In short, this document discusses building a query harness; capturing and then executing a 
>representative set of queries to measure your system performance against, how and why-
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2018_19_QueryHarness.pdf)
>

2018 June - -

>Customer: I'm confused by all of the options for loaders, developer's tools and similar. 
>Can you offer me an overvew, specifically detailing DSE Studio ?
>
>Daniel: Sure ! We overview all of the above, then detail install, configure and use of
>DSE Studio version 6.0, including configuration and use of CQL and Spark/SQL.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2018_18_Studio.pdf)
>

2018 May - -

>Customer: My company is investigating using the cloud, containers including micro-services, 
>automated deployment tools (continuous innovation / continuous deployment), and more. Can you 
>help ?
>
>Daniel: Excellent question ! Huge and far ranging topics, obviously; we’ll offer a history 
>and primer on many of these pieces, a Cloud-101 if you will. Then, to offer some amount of 
>actionable content, we’ll delve a bit deeper into one container option, namely; Docker.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2018_17_Docker.pdf)
>

2018 April - -

>Customer: My company really enjoyed the last two documents in this series on the topic of 
>DataStax Enterprise (DSE) DSE Search, however; our application also needs to include geo-spatial 
>queries, specifically-
>
>• Find all points within a distance from a given point, including a compound Text Search.
>
>• Find all points within a polygon.
>
>• And while we’re at it; what is the best means to do end user testing of geo-spatial queries-
>
>Can you help ?
>
>Daniel: Excellent question ! In this document we will:
>
>• Review DSE Search, overview the main points from last month’s edition of this document.
>
>• Deliver the two DSE Search geo-spatial queries you detail above.
>
>• Deliver a graphical (custom) application you could use for end user testing.
>
>** This docment states that the accompanying download contains 330,000 sample
>geo-points from the USA states of Colorado and Utah. This amount of data was 
>greater in size than GitHub cared for. So, you only get Colorado data at nearly
>220,000 geo-points.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2018_16_Spatial.pdf)
>
>[Resource kit](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2018_16_Spatial.tar.gz), all of the data and programs used in this edition in Tar/Gunzip format. About 24 MB compressed.
>
>[Demonstration video](https://youtu.be/kF3IjwVyBtI), of the programs created and used in this document.
>

2018 March - -

>Customer: My company wants to use the secondary indexes, part of DataStax Enterprise (DSE) 
>Search, more specfically the (first name) synonym and Soundex style features to aid in 
>customer call center record lookup. Can you help ?
>
>Daniel: Excellent question ! DataStax Enterprise (DSE) Search is one of the four primary 
>functional areas inside DSE; the others being DSE Core, DSE Analytics, and DSE Graph. 
>Built atop Apache Solr, DSE Search is a large topic. As such, we will detail the programming 
>(use) of DSE Search, and let this document serve as a primer of sorts.
>
>We plan follow up editions of this document to cover not just programming, but capacity 
>planning of DSE Search, and tuning of DSE Search.
>
>**Mar 21 - This document was heavily revised: 30 new pages of content, 2 errors corrected.**
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/DDN_2018_15_SearchPrimer.pdf)
>

2018 February - -

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
>how they work pre release 6.0, and are planned to work in the 6.0 release. Further, we detail:
>
>• The four functional areas of DSE, including DSE Core with its network partition fault tolerance and time constant lookups.
>
>• We detail B-Tree+ and hash lookups, and which scale and why.
>
>• We define the DSE primary key, including its partitioning key and clustering key parts.
>
>• We detail what makes a query a DSE Core query versus a DSE Search query.
>
>• We highlight the new CQL native processing of DSE Search commands.
>
>• We overview DSE materialized views, and secondary indexes.
>
>• We detail how to add and drop table columns, and inform DSE Search indexes of same.
>
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


