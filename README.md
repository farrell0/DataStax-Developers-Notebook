DataStax Developer's Notebook - Monthly Articles 2020
===================

| **[Monthly Articles - 2020](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/README.md)** | **[Monthly Articles - 2019](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2019/README.md)** | **[Monthly Articles - 2018](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2018/README.md)** | **[Monthly Articles - 2017](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2017/README.md)** |
|-------------------------|--------------------------|--------------------------|--------------------------|

This is a personal blog where we answer one or more questions each month from DataStax customers in a non-official, non-warranted, non much of anything forum. 

June 2020 - -
>Customer: My company is investigating using DataStax database as a service, titled DataStax Astra (Astra), to aid 
>in our application development. I know Astra is exactly equal to Apache Cassandra, which means that the DataStax 
>Enterprise DSE Search component is not present. 
>
>As such, we lose Solr/Lucene, and any geo-spatial index and query processing support. But, our application needs 
>geospatial query support. Can you help ?
>
>Daniel: Excellent question ! You will be surprised how easy this is to address. In this article we detail how you 
>deliver geospatial queries using DataStax Astra, or just the DataStax Enterprise (DSE) Core functional component, 
>(and not use DSE Search).
>
>[Download whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2020/DDN_2020_42_AstraGeohash.pdf)
>
>[Application program code](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2020/DDN_2020_42_AstraGeohash_Programs.tar.gz)
>
>[Application program data](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2020/DDN_2020_42_AstraGeohash_Data.pipe.gz)
>
>(Because of GitHub file size limits, the above data file contains only 250,000 of the promised 334,000 lines of data. Sorry.)
>
>[Demonstration video]()

May 2020 - -
>Customer: My company has got to improve its efficiency and time to delivery when creating business applications on 
>Apache Cassandra and DataStax Enterprise. Can you help ?
>
>Daniel: Excellent question ! Since you specfically mentioned application development, we will give focus to API 
>endpoint programming; a means to more greatly decouple your application from the database, allowing for greater 
>flexibility in deployment, and even increasing performance of Web and mobile applications.
>
>While we might briefly mention REST and gRPC, the bulk of this document will center on GraphQL.
>
>[Download whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2020/DDN_2020_41_GraphQL.pdf)

April 2020 - -
>Customer: My company has started using more cloud instances for tasks like proof of concepts, and related. 
>We used to just leave these boxes wide open, since they generally contain zero sensitive data. But, things 
>being what they are, we feel like we should start securing these boxes. Can you help ?
>
>Daniel: Excellent question ! In the March/2019 edition of this document, we detailed how to implement 
>native authentication using DataStax Enterprise (DSE). In this edition, we detail how to implement SSL 
>between DSE server nodes (in the event you go multi-cloud), and then also SSL from client (node) to DSE 
>cluster.
>
>[Download whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2020/DDN_2020_40_SSL.pdf)

March 2020 - -
>Customer: As a database application developer, I’ve never previously used a system with a natively asynchronous 
>client side driver. What do I need to know; Can you help ?
>
>Daniel: Excellent question ! Yes, the DataStax Enterprise (DSE) client side drivers offer entirely native 
>asynchronous operation.; fire and forget, or fire and listen. There are easy means to make the driver and 
>any calls you issue block, and behave synchronously, but there’s little fun in that.
>
>The on line documentation covers the asynchronous query topic well, so we’ll review that and then extend 
>into asynchronous write programming.
>
>[Download whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2020/DDN_2020_39_DriverFutures.pdf)

February 2020 - -

>Customer: I’ve read all of the articles and documentation related to DataStax Enterprise (DSE) Graph, but am 
>still not certain how these graph queries (traversals) actually execute. To me, this looks much like a SQL 
>query processing engine, and I don’t know how or if to index or model this. Can you help ?
>
>Daniel: Excellent question ! In this document we’ll give a brief treatment to graph query processing; how 
>graph traversals are actually (executed). For fun, we’ll actually talk a little bit about a close (graph) 
>neighbor, Neo4J.
>
>[Download whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2020/DDN_2020_38_FileMethods.pdf)

January 2020 - -

>Customer: My company maintains a lot of data on Hadoop, in Parquet and other formats, and need to perform integrated 
>reporting with data resident inside DataStax. Can you help ?
>
>Daniel: Excellent question ! Yes. This is like a two-liner solution. We’ll detail all of the concepts and code inside 
>this document.
>
>[Download whitepaper here](https://github.com/farrell0/DataStax-Developers-Notebook/blob/master/2020/DDN_2020_37_Parquet.pdf)
