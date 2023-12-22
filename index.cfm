<!--- ATTRIBUTE SCOPE --->
<cfset attributes.temp = "Harry">
<!--- LOCAL VARIABLE IN CALLER --->
<cfset ref = "callerVariable" >
<!--- CUSTOM TAG CALL --->
<cf_customtag temp="#attributes.temp#" >
<!---     <cfset CGI.REQUEST_METHOD = "POST"> CANNOT CHANGE THEIR VALUES ---> 
<!---     <cfset SERVER.ColdFusion.ProductVersion = "21321"> CANNOT CHANGE THEIR VALUES ---> 
<cfoutput>
<!---     CGI SCOPE --->
    #CGI.REQUEST_METHOD# <br>
<!---     SERVER SCOPE --->
    #SERVER.ColdFusion.ProductVersion#
    
</cfoutput>