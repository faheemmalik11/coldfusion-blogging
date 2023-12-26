<!--- ColdFusion Query of Queries (QoQ) lets you query the results of an existing database query. You can also query a non-database query object, for example, the results of a <cfftp> directory listing. --->
<!--- Syntax: 
    To create a Query of Queries, you use the <cfquery> tag (just like with a database query), and specify dbtype="query". Then, within the SQL, your FROM keyword needs to indicate the name of the query that you are querying. So, in other words, instead of querying a table, you are querying a query.
--->
<cfquery datasource="dsn" name="FileContent">
    SELECT * FROM FileUploadInfo;
</cfquery>
<cfdump  var="#FileContent#">
<cfquery dbtype="query" name="someContent">
    Select 	CLIENTDIRECTORY,CLIENTFILE,CLIENTFILEEXT From FileContent where CLIENTFILEEXT='pdf'
</cfquery>
<cfdump  var="#someContent#">
