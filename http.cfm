<!--- Using the ColdFusion cfhttp tag, you can grab someone elses web page and present it or parts of it on your own site. --->
<!--- To grab a remote web page, you first use the cfhttp tag to do an HTTP call. Once it's done the HTTP call, the contents of the web page is stored in a variable called cfhttp.filecontent. --->

<cfhttp url="https://www.quackit.com/coldfusion/tutorial/">
    <cfset sStartString = cfhttp.filecontent> 
    <cfset sStartTag = FindNoCase('<div class="index">', sStartString)>
    <cfset sTempString = RemoveChars(sStartString,1, sStartTag-1)>
    <cfset sEndTag = FindNoCase("<p>This", sTempString)>
    <cfset sFinalString = RemoveChars(sTempString,sEndTag,len(sTempString))>
    <cfoutput>
        #sFinalString#
    </cfoutput>