DataStax Developer's Notebook - Monthly Articles 2019
===================

| **[Monthly Articles - 2019](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/README.md)** | **[Monthly Articles - 2018](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2018/README.md)** | **[Monthly Articles - 2017](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2017/README.md)** |
|-------------------------|--------------------------|--------------------------|

This is a personal blog where we answer one or more questions each month from DataStax customers in a non-official, non-warranted, non much of anything forum. 

2019 October - -
>Customer: My company has a number of shortest-path problems, for example; airlines, get me from SFO to 
>JFK for passenger and freight routing. I understand graph analytics may be a means to solve this problem. 
>Can you help ?
>
>Daniel: Excellent question ! This is the third of three documents in a series answering this question. In 
>the first document (August/2019), we set up the DataStax Enterprise (DSE) release 6.8 Python client side 
>library, and worked with the driver for both OLTP and OLAP style queries. In the second document in this 
>series (September/2019), we delivered a thin client Web user interface that allowed us to interact with 
>a (grid maze), prompting and then rendering the results to a DSE Graph shortest path query (traversal). 
>In this third and final document in this series, we backfill all of the DSE Graph (Apache Gremlin) traversal 
>steps you would need to know to write the shortest path query on your own, without aid.
>
>[Download whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_34_GremlinPrimer.pdf)
>
>[Application program code](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_34_GremlinPrimer.txt)


2019 September - -
>Customer: My company has a number of shortest-path problems, for example; airlines, get me from SFO to 
>JFK for passenger and freight routing. I understand graph analytics may be a means to solve this problem. 
>Can you help ?
>
>Daniel: Excellent question ! This is the second of three documents in a series answering this question. 
>In the first document (August/2019), we set up the DataStax Enterprise (DSE) release 6.8 Python client 
>side library, and worked with the driver for both OLTP and OLAP style queries. In this second document, 
>we deliver a thin client Web user interface that allows us to interact with a (grid maze), prompting 
>and then rendering the results to a DSE Graph shortest path query (traversal). In the third and final 
>document in this series (October/2019), we will backfill all of the DSE Graph (Apache Gremlin) traversal 
>steps you would need to know to write the shortest path query on your own, without aid.
>
>All of the source code to the client program, written in Python, is available below as a Linux Tar ball.
>
>[Download Whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_33_ShortestPoint.pdf)
>
>[Application program code](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_33_ShortestPoint.tar)


2019 August - -
>Customer: My company has a number of shortest-path problems, for example; airlines, get me from SFO to 
>JFK for passenger and freight routing. I understand graph analytics may be a means to solve this problem. 
>Can you help ?
>
>Daniel: Excellent question ! Previously in this document series we have overviewed the topic of graph 
>databases (June/2019, updated from January/2019). Also, we have deep dived on the topic of product 
>recommendation engines using Apache Spark (DSE Analytics) machine learning, and also DSE Graph, 
>performing a compare/contrast of the analytics each environment offers (July/2019).
>
>In this edition of this document, we will address graph analytics, shortest path. While we previously 
overviewed graph, we’ve never detailed the graph query language titled, Apache Gremlin. Gremlin is a 
>large topic, way larger and more capable than SQL SELECT. Thus, we will, in this document, begin a 
>series of at least 3 articles, they being;
>
>  • Setup a DSE (Graph) version 6.8, Python client for both OLTP and OLAP. (This document)
>
>  • Deliver the shortest path solution using DSE Graph with a Python Web client user interface.
>
>  • Deliver a part-1 primer on Apache Gremlin, so that you may better understand the query (Gremlin 
>traversal) used to calculate shortest path.
>
>
>[Download Whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_32_Python68Client.pdf)
>
>[Application program code](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_32_Python68Client.py)


2019 July - -
>Customer: I'm confused. I saw a presentation at the 2019 DataStax world conference (Accelerate 2019), 
>detailing how to deliver a product recommendation engine using DSE Graph. I've also seen DSE articles 
>detailing how to deliver a product recommendation engine using DSE Analytics. Can you help ?
>
>Daniel: Excellent question ! As discussed in previous editions of this document; there are 4 primary 
>functional areas within DataStax Enterprise (DSE). DSE Analytics can deliver a ‘content-based’ product 
>recommendation (aka, product-product). DSE Graph can deliver a ‘collaborative-based’ product recommendation 
>engine (aka, user-user). Both DSE Analytics and DSE Graph use DSE Core as their storage engine, and DSE 
>Search as their advanced index engine; a full integration, not just a connector.
>
>In this edition of this document we’ll detail all of the code needed to deliver the above, and include 
>data. We’ll also use this edition of this document to provide a Graph query primer (Gremlin language 
>primer), and answer the nuanced question of; Why Graph ?
>
>[Download Whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_31a_DSE%2C%20Reco%20Engines.pdf)
>
>[PowerPoint (mesaurably more detailed than above)](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_31b_DSE%2C%20Reco%20Engines.pptx)
>
>[Video recording of the PPT above](https://www.youtube.com/watch?v=15xUt1sZ48U&feature=youtu.be)
>
>[Just Grocery Data as Tar](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_31c_JustGroceryData.tar)
>
>[All Program Code as Txt](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_31d_AllCommands.txt)
>
>[DataStax KillrVideo demo DB data as Tar](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_31e_KillrVideoDataAsPipe.tar)
>
>[DataStax KillrVideo demo DB DDL as Txt (vers 6.8, fyi)](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_31f_KillrVideoDDL.cql)


2019 June - -

>Customer: I saw the January/2019 article where you introduced graph computing using Apache TinkerPop, 
>aka, DataStax Enterprise Graph. Now I see that you’ve released an EAP (early access program, preview) 
>DataStax Enterprise version 6.8 with significant changes to graph, including a new storage model. I 
>figure there’s a bunch of new stuff I need to know. Can you help ?
>
>Daniel: Excellent question ! Yes. In this edition of DataStax Developer’s Notebook (DDN), we’ll update 
>the January/2019 document with new version 6.8 DSE capabilities, and do a bit of compare and contrast. 
>Keep in mind as an EAP, version 6.8 is proposed, early preview. Version 6.8 may change drastically.
>
>In this document, we detail that you no longer need GraphFrames; inserting using standard DataFrames
>saves a bunch of processing steps, and still performs just as well. We detail the new version 6.8 
>storage model, which is also much simpler over version 6.7. (Everything is stored directly in DSE Core 
>tables, and directly support DSE Core CQL queries.)
>
>[Download here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_30_GraphPrimer%2068.pdf)


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
