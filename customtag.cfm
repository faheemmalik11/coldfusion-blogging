<cfparam  name="attributes.temp" default="Jack">

<cfoutput>
<!---     attributes passed to the custom tag --->
    <h1>Hello #attributes.temp#</h1>   
<!---     caller scope: any variable defined in the caller can be accessed in custom tag --->
    <h2>#caller.ref#</h2> 
</cfoutput>


