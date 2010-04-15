<%@ page import = "  javax.servlet.*, javax.servlet.http.*, java.io.*, org.apache.lucene.analysis.*, org.apache.lucene.analysis.standard.StandardAnalyzer, org.apache.lucene.document.*, org.apache.lucene.index.*, org.apache.lucene.store.*, org.apache.lucene.search.*, org.apache.lucene.queryParser.*, org.apache.lucene.demo.*, org.apache.lucene.demo.html.Entities, java.net.URLEncoder, org.apache.lucene.util.Version" %>

<%@include file="header.jsp"%>
<%
        String indexName = indexLocation;       //local copy of the configuration variable
        IndexSearcher searcher = null;          //the searcher used to open/search the index
                                                //less

        try {
          IndexReader reader = IndexReader.open(FSDirectory.open(new File(indexName)), true);
        } catch (Exception e) {
        }
%>
