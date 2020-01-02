DataStax Developer's Notebook - Monthly Articles 2019
===================

| **[Monthly Articles - 2020](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/README.md)** | **[Monthly Articles - 2019](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/README.md)** | **[Monthly Articles - 2018](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2018/README.md)** | **[Monthly Articles - 2017](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2017/README.md)** |
|-------------------------|--------------------------|--------------------------|--------------------------|

This is a personal blog where we answer one or more questions each month from DataStax customers in a non-official, non-warranted, non much of anything forum. 

2019 December - -
>Customer: My company is getting ready to go into production with our first (Cassandra) application. We’ve 
>noticed that one of our nodes contains way more data than the other nodes, and is way more utilized than 
>the other nodes. We’ve found “nodetool cfstats”, along with mention of tombstones, read/write latencies, 
>and more, and think we have a problem. Can you help ?
>
>Daniel: Excellent question ! You’ve got a lot going on above in this problem statement. Net/net, in this 
>document we will; explain cfstats, overview a (production readiness) examination, and more.
>
>[Download whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_36_cfstats.pdf)

2019 November - -
>Customer: I’m a developer and have little time to learn the complexities of setting up and maintaining 
>servers. I get that I can stand up a DatasStax Enterprise server in 2 minutes or less, but I have at 
>least 10 of these types of challenges to overcome when getting applications out of the door. Can you help ?
>
>Daniel: Excellent question ! Well obviously you want some automation. DataStax Desktop was introduced 
>this year as a means to simply containerize your DataStax Enterpise (DSE) install. A fat client, DataStax 
>Desktop runs on Linux, MacOS and Windows, and fronts ends Docker and Kubernetes; really then, standing up 
>a new, single or set of DSEs is like a 3 button operation.
>
>[Download whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/DDN_2019_35%20Desktop.pdf)

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
