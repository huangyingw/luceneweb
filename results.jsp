<%@ page import = "  javax.servlet.*, javax.servlet.http.*, java.io.*, org.apache.lucene.analysis.*, org.apache.lucene.analysis.standard.StandardAnalyzer, org.apache.lucene.document.*, org.apache.lucene.index.*, org.apache.lucene.store.*, org.apache.lucene.search.*, org.apache.lucene.queryParser.*, org.apache.lucene.demo.*, org.apache.lucene.demo.html.Entities, java.net.URLEncoder, org.apache.lucene.util.Version" %>

<%@include file="header.jsp"%>
<%
        boolean error = false;                  //used to control flow for error messages
        String indexName = indexLocation;       //local copy of the configuration variable
        IndexSearcher searcher = null;          //the searcher used to open/search the index
        Query query = null;                     //the Query created by the QueryParser
        TopDocs hits = null;                       //the search results
        int startindex = 0;                     //the first index displayed on this page
        int maxpage    = 50;                    //the maximum items displayed on this page
        String queryString = null;              //the query entered in the previous page
        String startVal    = null;              //string version of startindex
        String maxresults  = null;              //string version of maxpage
        int thispage = 0;                       //used for the for/next either maxpage or
                                                //hits.totalHits - startindex - whichever is
                                                //less

        try {
          IndexReader reader = IndexReader.open(FSDirectory.open(new File(indexName)), true); // only searching, so read-only=true
          searcher = new IndexSearcher(reader);         //create an indexSearcher for our page
                                                        //NOTE: this operation is slow for large
                                                        //indices (much slower than the search itself)
                                                        //so you might want to keep an IndexSearcher 
                                                        //open
                                                        
        } catch (Exception e) {                         //any error that happens is probably due
        }
%>
