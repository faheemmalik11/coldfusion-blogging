<!---
<!--- FILE UPLOADING --->
<cfparam name="form.fileUpload" default="">

<cfif len(trim(form.fileUpload))>
  <cffile action="upload"
     fileField="fileUpload"
     destination="/home/faheemmalik11/ColdfusionRoot/coldfusion-blogging">
  <p>Thankyou, your file has been uploaded.</p>
</cfif>

<form enctype="multipart/form-data" method="post">
  <input type="file" name="fileUpload">
  <input type="submit" value="Upload File">
</form>

<!--- FILE READING --->
<cffile
action="read"
file="/home/faheemmalik11/ColdfusionRoot/coldfusion-blogging/test.txt"
variable="filecontents"
>
<cfdump  var="#filecontents#">

<!--- FILE WRITING --->
<cfset fileContent = "wqqqsasaa  wqqqqaaaaaaa
dssssssd">
<cffile
action="write"
file="/home/faheemmalik11/ColdfusionRoot/coldfusion-blogging/test.txt"
output="#fileContent#"
addNewLine = "yes"
>


<!--- FILE APPENDING --->
<cfset fileContent = "append some data to it 
dssssssd">
<cffile
action="append"
file="/home/faheemmalik11/ColdfusionRoot/coldfusion-blogging/test.txt"
output="#fileContent#"
addNewLine = "yes"
>


FILE RENAMING 
<cffile
  action="rename"
  source="/home/faheemalik11/ColdfusionRoot/coldfusion-blogging/test.txt"
  destination="renamed.txt"
>


MOVE FILE

<cffile  action="move"
  source="/home/faheemmalik11/ColdfusionRoot/coldfusion-blogging/test.txt"
  destination="/home/faheemmalik11/ColdfusionRoot/learning_coldfusion/test.txt">



  COPY FILE

  <cffile  action="copy"
  source="/home/faheemmalik11/ColdfusionRoot/learning_coldfusion/test.txt"
  destination="/home/faheemmalik11/ColdfusionRoot/coldfusion-blogging/test.txt"
  >

DELETE FILE

<cffile
    action="delete"
    file="/home/faheemmalik11/ColdfusionRoot/learning_coldfusion/test.txt"
>

FILE PARAMETERS

<cfparam  name="form.fileUpload" default="">

<cfif len(trim(form.fileUpload))>
<cffile 
  action="upload"
  fileField="fileUpload"
  destination="/home/zubair/ColdfusionRoot/coldfusion-blogging/file.pdf"
  nameConflict="overwrite"
>
<p>Thankyou, your file has been uploaded.</p>
<cfquery datasource="dsn">
  insert into FileUploadInfo (
	ClientDirectory,
	ClientFile ,
	ClientFileExt,
	ClientFileName,
	ContentType,
	ContentSubType,
	FileSize,
	ServerDirectory,
	ServerFile,
	ServerFileExt,
	ServerFileName
) values (
	'#file.clientdirectory#',
	'#file.clientfile#',
	'#file.clientfileext#',
	'#file.clientfilename#',
	'#file.contenttype#',
	'#file.contentsubtype#',
	#file.filesize#,
	'#file.serverdirectory#',
	'#file.serverfile#',
	'#file.serverfileext#',
	'#file.serverfilename#'
)
</cfquery>
</cfif>


<form method="post" enctype="multipart/form-data">
  <input type="file" name="fileUpload" >
  <button type="submit" >upload</button>
</form>
    --->
