<!---
<!--- FILE UPLOADING --->
<cfparam name="form.fileUpload" default="">

<cfif len(trim(form.fileUpload))>
  <cffile action="upload"
     fileField="fileUpload"
     destination="/home/zubair/ColdfusionRoot/coldfusion-blogging">
  <p>Thankyou, your file has been uploaded.</p>
</cfif>

<form enctype="multipart/form-data" method="post">
  <input type="file" name="fileUpload">
  <input type="submit" value="Upload File">
</form>

<!--- FILE READING --->
<cffile
action="read"
file="/home/zubair/ColdfusionRoot/coldfusion-blogging/test.txt"
variable="filecontents"
>
<cfdump  var="#filecontents#">

<!--- FILE WRITING --->
<cfset fileContent = "wqqqsasaa  wqqqqaaaaaaa
dssssssd">
<cffile
action="write"
file="/home/zubair/ColdfusionRoot/coldfusion-blogging/test.txt"
output="#fileContent#"
addNewLine = "yes"
>


<!--- FILE APPENDING --->
<cfset fileContent = "append some data to it 
dssssssd">
<cffile
action="append"
file="/home/zubair/ColdfusionRoot/coldfusion-blogging/test.txt"
output="#fileContent#"
addNewLine = "yes"
>

--->