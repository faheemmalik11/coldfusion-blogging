<cfchart
   format="png"
   scalefrom="0"
   scaleto="1200000">
  <cfchartseries
      type="bar"
      serieslabel="Website Traffic 2006"
      seriescolor="blue">
    <cfchartdata item="January" value="503100">
    <cfchartdata item="February" value="720310">
    <cfchartdata item="March" value="688700">
    <cfchartdata item="April" value="986500">
    <cfchartdata item="May" value="1063911">
    <cfchartdata item="June" value="1125123">
  </cfchartseries>
</cfchart>

<cfchart
	format="png"
	scalefrom="0"
	scaleto="1200000"
    show3d='yes'>
	<cfchartseries
		type="horizontalbar"
		serieslabel="Website Traffic 2005"
		seriescolor="##ffcc00">
		<cfchartdata item="January" value="245200">
		<cfchartdata item="February" value="420560">
		<cfchartdata item="March" value="488710">
		<cfchartdata item="April" value="686320">
		<cfchartdata item="May" value="763450">
		<cfchartdata item="June" value="825562">
	</cfchartseries>
	<cfchartseries
		type="horizontalbar"
		serieslabel="Website Traffic 2006"
		seriescolor="blue">
		<cfchartdata item="January" value="503100">
		<cfchartdata item="February" value="720310">
		<cfchartdata item="March" value="688700">
		<cfchartdata item="April" value="986500">
		<cfchartdata item="May" value="1063911">
		<cfchartdata item="June" value="1125123">
	</cfchartseries>
</cfchart>