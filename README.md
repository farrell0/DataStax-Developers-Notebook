DataStax Developer's Notebook - Monthly Articles 2019
===================

| **[Monthly Articles - 2019](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/README.md)** | **[Monthly Articles - 2018](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2018/README.md)** | **[Monthly Articles - 2017](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2017/README.md)** |
|-------------------------|--------------------------|--------------------------|

This is a personal blog where we answer one or more questions each month from DataStax customers in a non-official, non-warranted, non much of anything forum. 

2019 May - -

>Customer: As a developer I’ve been using Redis for 6 years, and now my company tells me I have to move 
>all of my work to Apache Kafka. Can you help ?
>
>Daniel: Excellent question ! Management, huh ? We say that because Redis and Kafka are not the same. 
>In fact, Redis seems to have really re-energized in the past 4 years, with many strategic enhancements. 
>Redis has held the number four spot on DB-Engines.com database ranking for some time. Kafka, while 
>used by nearly everyone, seems to place 60% of their workloads serving mainframe off loads; guaranteed 
>message delivery possibly to multiple consumers. (A scale out of subscribe in publish/subscribe.)
>
>In this document, we’ll install and configure a single node (stand alone) Kafka cluster, learn to write 
>and read messages, and install and configure the DataStax Kafka Connector (Kafka Connector). Using the 
>Kafka Connector, you can push Kafka messages into DataStax Enterprise and the DataStax Distribution of 
>Cassandra (DDAC) without writing any program code. Cool.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_29_Kafka.pdf)


2019 April - -

>Customer: I work on my laptop using Python, R, and Jupyter Notebooks, doing analytics for my company. 
>I’ve been digging on the analytics topics built inside DataStrax Enterprise (pre-installed, data co-located 
>with the analytics routines), but don’t see how I can make use of any of this. Can you help ?
>
>Daniel: Excellent question ! Isn’t Python and R the number one data science software pairing on the 
>planet ? (Regardless, it must be in the top two.) DataStax Enterprise ships pre-configured with a 
>Python interpreter, and R. For R, don’t know why, you must install one new external library.
>
>We do have a bias towards Spark/R, since Spark/R seemed to lead in the area of open source parallel c
>apable routines. (Speed, performance, better documentation.)
>
>Jupyter is also an excellent choice, especially if you’re Python focused. We’ve not yet looked at 
>the Anaconda distribution of Jupyter, which seems very promising. We’ll show a Jupyter install, 
>but may ourselves stick with Apache Zeppelin, since Zeppelin seems to come pre-installed/pre-configured 
>for so many more languages and options out of the box. (Less work for us.)
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_28_Jupyter%2C%20R.pdf)


2019 March - -

>Customer: My company was using application server tiered security, and now needs to implement 
>database tier level security. Can you help ?
>
>Daniel: Excellent question ! Obviously security is a broad topic; OS level security (the OS 
>hosting DSE), database level security, data in flight, data at rest, and more.
>
>Minimally we’ll overview DSE security, and detail how to implement password protection of same.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_27_Security.pdf)


2019 February - -

>Customer: I need to program an inventory management system, and wish to use the time stamp, time to 
>live, and other features found within DSE. Can you help ?
>
>Daniel: Excellent question ! The design pattern you implement differs when you are selling a distinct 
>inventory (specifically numbered seats to a concert), or you are selling a true-count, number on hand 
>inventory (all items are the same).
>
>Regardless, we will cover all of the relevant topics, and detail how to program same using DSE Core 
>and DSE Analytics (Apache Spark).
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_26_Inventory.pdf)


2019 January - - 

>Customer: Graph, graph, graph; what the heck is up with graph- I think (hope ?) there’s something graph 
>databases do that standard relational databases do not, but I can’t articulate what that function or 
>advantage actually is. Can you help ?
>
>Daniel: Excellent question !  Yes, but we’re going to take two editions of this document to do so. Sometimes 
>there are nuances when discussing databases; what really is the difference between a data warehouse, 
>data mart, data lake, other ? Why couldn’t you recreate some or most non-relational database function 
>using a standard relational database ?
>
>In this edition of DataStax Developer’s Notebook (DDN), we provide a graph database primer; create a 
>graph, and load it. In a future edition of this same document, we will actually have the chance to 
>provide examples where you might determine that graph databases have an advantage over relational 
>databases for certain use cases.
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_25_GraphPrimer.pdf)
>
>[Resource Kit](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/41%20Simple%20Customer%20Graph.txt), all of the data and programs used in this edition in ASCII text format.
>
