{smcl}
{* December 5th 2013}{...}
{hline}
Help for {hi:dta2kml}
{hline}

{title:Title}

{phang2}{cmdab:dta2kml} {hline 2} outputs a KML file from selected datapoints in a Stata dataset.

{title:Syntax}{phang2}{cmdab:dta2kml} {help using} {it:filename} {if in}, 
	{opth lat:itude(varname)} {opth lon:gitude(varname)} [{opt alt:itude(varname)}] 
	[{opt f:olders(varname)}] [{opt n:ames(varname)}] [{opt i:cons(varname string)}] [{opt d:escriptions(varname)}] [{opt replace}] [{opt lines(group_var index_var)}] [{it:{help dta2kml##pointoptions:point_options}}]


{synoptset}{...}
{marker Options}{...}
{synopthdr:Options}
{synoptline}
{pstd}{it:{ul:{hi:Line Options}}}{p_end}

{synopt:{opt lines()}} Specify the grouping variable (unique for each line) and the index variable, ranging from 1 to {it:n} consecutively for each element. If {opt lines()} is specified only this type of data can be used.{p_end}

{pstd}{it:{ul:{hi:Point Options}}}{p_end}

{marker pointoptions}{...}
{synopt :{cmdab: f:olders()}}Indicates a variable containing folder names.{p_end}
{synopt :{cmdab: n:ames()}}Indicates a variable containing placemark names.{p_end}
{synopt :{cmdab: i:cons()}}Indicates a variable containing the full URLs of the desired icons from the libraries located at {it:http://kml4earth.appspot.com/icons.html}. If this option is not specified, all placemarks display the default icon.{p_end}
{synopt :{cmdab:d:escriptions()}}Indicates a variable containing descriptions to attach to the placemarks.{p_end}

{synoptline}

{title:Notes}

{p}Latitude and longitude must be specified in numeric decimal format, not degrees-minutes-seconds format or string format. Altitude must be specified numerically in meters.{p_end}

{title:Author}

Benjamin Daniels
bbdaniels@gmail.com
