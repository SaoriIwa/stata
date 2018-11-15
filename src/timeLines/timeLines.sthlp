{smcl}
{* Nov 15 2018}
{hline}
Help for {hi:timeLines}
{hline}

{title:Title}

{phang2}{cmd: timeLines} {hline 2} creates a graphical representation of time use for various panel units when each observation represents an activity with a start and end time.{p_end}

{title:Syntax}

{phang2}{cmd: timeLines} [{help if}] [{help in}], {opth id(varlist)} {opth start(varname)} {opth end(varname)} {break} [{opth names(varname)}] [{opth labels(varname)}] 
[{cmd:labopts(}{help marker_label_options:marker_label_options}{cmd:)}] [{opth class(varname)}] [{cmd:classcolors(}{help colorstyle:color_name}{cmd:)}] [{help twoway_options:tw_options}] {p_end}

{phang2}Whereas {cmd:id()} specifies the category label on y axis. {cmd:labels()} is a sub-category that belongs to {cmd:id()}. {cmd:labels()} assigns labels onto each time period under {cmd:id()}. 


{synoptset 16 tabbed}{...}
{marker Options}{...}
{synopthdr:Options}
{synoptline}
{p2coldent:* {opt id()}}Variable defining the category for the y axis.{p_end}
{p2coldent:* {opt start()}}Variable defining the start times for each activity.{p_end}
{p2coldent:* {opt end()}}Variable defining the end times for each activity.{p_end}
{synopt:{opt names()}}Indicates names to be used in graph display, if these are not defined by labels on the id() variables.{p_end}
{synopt:{opt labels()}}Indicates labels to be used in graph display, corresponding to time periods. This is the time period labels under each category specified with {id()} {p_end}
{synopt:{opt labopts()}}Any options required for display of labels.{p_end}
{synopt:{opt class()}}According to a variable that classifies observations into categories, colors the time periods that correspondes with it. Must also specify colors with classcolors().{p_end}
{synopt:{opt classcolors()}}Specifies colors for each class specified by {class()}.{p_end}
{synopt:{it:tw_options}}Specify any additional options needed for display of graph.{p_end}
{synoptline}
{p 4 6 2}{it:(A * indicates required options.)}{p_end}


{title:Demo}

	webuse census , clear

	*For simplicity, just use 11 observations{p_end}
	keep in 40/50

	*Use "pop" and "pop18p" to create time value variables. {p_end}
	replace pop18p = pop18p / 1000
	replace pop = pop / 1000
	format pop18p %tdMon_CCYY
	format pop1 %tdMon_CCYY

	* Create two categories of the observation.
	xtile category = popurban , n(2)
	label def category 1 "Early Adopters" 2 "Late Adopters"
	label val category category

	{inp: timeLines , id(region) start(pop18p) end(pop) labels(state) labopts(mlabangle(30)) xsize(7) class(category) classcolors(maroon navy)}
  
	graph export "${directory}/timeLines.png" , replace



{title:Author}

Benjamin Daniels
bdaniels@worldbank.org
