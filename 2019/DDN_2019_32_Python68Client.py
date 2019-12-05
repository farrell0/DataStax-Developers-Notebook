

#
#  Imports
#

from dse.cluster import Cluster, GraphExecutionProfile
from dse.cluster import EXEC_PROFILE_GRAPH_DEFAULT
from dse.cluster import EXEC_PROFILE_GRAPH_ANALYTICS_DEFAULT
   #
from dse.graph import GraphOptions, GraphProtocol, graph_graphson3_row_factory


############################################################
############################################################


#
#  Assuming a DSE at localhost with DSE Search and Graph
#  are turned on
#
l_graphName = 'ks_32'


l_execProfile1 = GraphExecutionProfile(                  # OLTP
   graph_options=GraphOptions(graph_name=l_graphName,
      graph_protocol=GraphProtocol.GRAPHSON_3_0),
      row_factory=graph_graphson3_row_factory
   )
l_execProfile2 = GraphExecutionProfile(                  # OLAP
   graph_options=GraphOptions(graph_name=l_graphName,
      graph_source='a',
      graph_protocol=GraphProtocol.GRAPHSON_3_0),
      row_factory=graph_graphson3_row_factory
   )

l_cluster = Cluster(execution_profiles = {
   EXEC_PROFILE_GRAPH_DEFAULT:           l_execProfile1,
   EXEC_PROFILE_GRAPH_ANALYTICS_DEFAULT: l_execProfile2},
   contact_points=['127.0.0.1']
   )
m_session = l_cluster.connect()


############################################################
############################################################


#
#  Create the DSE server side objects; keyspace, table,
#  indexes, ..
#

def init_db1():
   global m_session


   print ""
   print ""

   l_stmt =                                                    \
      "DROP KEYSPACE IF EXISTS ks_32;                      "
         #
   l_rows = m_session.execute(l_stmt)
      #
   print ""
   l_stmt2 = ' '.join(l_stmt.split())
   print "Drop Keyspace: " + l_stmt2


   l_stmt =                                                    \
      "CREATE KEYSPACE ks_32                               " + \
      "   WITH replication = {'class': 'SimpleStrategy',   " + \
      "      'replication_factor': 1}                      " + \
      "   AND graph_engine = 'Core';                       " + \
      "                                                    " 
         #
   l_rows = m_session.execute(l_stmt)
      #
   print ""
   l_stmt2 = ' '.join(l_stmt.split())
   print "Create Keyspace: " + l_stmt2


   l_stmt =                                                    \
      "CREATE TABLE ks_32.grid_square                      " + \
      "   (                                                " + \
      "   square_id            TEXT,                       " + \
      "   PRIMARY KEY((square_id))                         " + \
      "   )                                                " + \
      "WITH VERTEX LABEL grid_square                       " + \
      ";                                                   "
         #
   l_rows = m_session.execute(l_stmt)
      #
   print ""
   l_stmt2 = ' '.join(l_stmt.split())
   print "Create Vertex: " + l_stmt2


   l_stmt =                                                    \
      "CREATE SEARCH INDEX ON ks_32.grid_square            " + \
      "   WITH COLUMNS square_id { docValues : true };     "
         #
   l_rows = m_session.execute(l_stmt)
      #
   print ""
   l_stmt2 = ' '.join(l_stmt.split())
   print "Create Search Index: " + l_stmt2


   l_stmt =                                                    \
      "CREATE TABLE ks_32.connects_to                      " + \
      "   (                                                " + \
      "   square_id_src        TEXT,                       " + \
      "   square_id_dst        TEXT,                       " + \
      "   PRIMARY KEY((square_id_src), square_id_dst)      " + \
      "   )                                                " + \
      "WITH EDGE LABEL connects_to                         " + \
      "   FROM grid_square(square_id_src)                  " + \
      "   TO   grid_square(square_id_dst);                 " 
         #
   l_rows = m_session.execute(l_stmt)
      #
   print ""
   l_stmt2 = ' '.join(l_stmt.split())
   print "Create Edge: " + l_stmt2


   l_stmt =                                                    \
      "CREATE MATERIALIZED VIEW ks_32.connects_to_bi       " + \
      "   AS SELECT square_id_src, square_id_dst           " + \
      "   FROM connects_to                                 " + \
      "   WHERE                                            " + \
      "      square_id_src IS NOT NULL                     " + \
      "   AND                                              " + \
      "      square_id_dst IS NOT NULL                     " + \
      "   PRIMARY KEY ((square_id_dst), square_id_src);    "
         #
   l_rows = m_session.execute(l_stmt)
      #
   print ""
   l_stmt2 = ' '.join(l_stmt.split())
   print "Create Bi-direction to Edge: " + l_stmt2


############################################################
############################################################


#
#  Load the Vertex and Edge with starter data
#

def init_db2():
   global m_session
   global m_ins2


   l_squares = [ 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21 ]


   #
   #  Insert data into the vertex; ks_32.grid_squares
   #
   l_ins1 = m_session.prepare(
      "INSERT INTO ks_32.grid_square (square_id) VALUES ( ? )"
      )
   for r in l_squares:
      for c in l_squares:
         l_data = "x" + str(r) + "-" + str(c)
         l_rows = m_session.execute(l_ins1, [ l_data ])


   #
   #  Insert data into the edge; ks_32.connects_to
   #
   for r in l_squares:
      for c in l_squares:
         #
         #  Within 1 row; column current <---> column right
         #
         if (c < 21):
            l_left_ = "x" + str(r) + "-" + str(c    )
            l_right = "x" + str(r) + "-" + str(c + 2)
               #
            l_rows = m_session.execute(m_ins2, [ l_left_, l_right ] )
            l_rows = m_session.execute(m_ins2, [ l_right, l_left_ ] )

         #
         # Within 1 column; row current to row below
         #
         if (r < 21):
            l_above = "x" + str(r    ) + "-" + str(c)
            l_below = "x" + str(r + 2) + "-" + str(c)
               #
            l_rows = m_session.execute(m_ins2, [ l_above, l_below ] )
            l_rows = m_session.execute(m_ins2, [ l_below, l_above ] )

   #
   #  From the loops above, we end up missing the bottom,
   #  right-most square. Do manually ..
   #
   l_rows = m_session.execute(m_ins2, [ "x19-21", "x21-21" ] )
   l_rows = m_session.execute(m_ins2, [ "x21-21", "x19-21" ] )
   l_rows = m_session.execute(m_ins2, [ "x21-19", "x21-21" ] )
   l_rows = m_session.execute(m_ins2, [ "x21-21", "x21-19" ] )


############################################################
############################################################


def run_traversals():

   l_stmt = "g.V().hasLabel('grid_square')"

   #  OLTP 
   for l_elem in m_session.execute_graph(l_stmt, execution_profile=EXEC_PROFILE_GRAPH_DEFAULT ):
      print l_elem

   print ""
   print "MMM"
   print ""

   #  OLAP
   for l_elem in m_session.execute_graph(l_stmt, execution_profile=EXEC_PROFILE_GRAPH_ANALYTICS_DEFAULT ):
      print l_elem


############################################################
############################################################


#
#  Our program proper
#

if __name__=='__main__':
   
   init_db1()

   #
   #  Our prepared INSERT(s) and DELETE(s)
   #
   m_ins2 = m_session.prepare(
      "INSERT INTO ks_32.connects_to (square_id_src, " + \
      "   square_id_dst) VALUES ( ?, ? )             "
      )
   m_del1 = m_session.prepare(
      "DELETE FROM ks_32.connects_to WHERE           " + \
      "   square_id_src = ? AND square_id_dst = ?    "
      )

   init_db2()
   
   run_traversals()



