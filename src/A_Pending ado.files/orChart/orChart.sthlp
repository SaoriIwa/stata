{smcl}
{* Nov 8th 2018}
{hline}
Help for {hi:orChart}
{hline}

{title:Title}

{phang}{cmd: orChart} {hline 2} generates a chart of primary logistic regression results expressed as odds ratios for a list of dependent variables, combined with a table detailing those results.{p_end}

{title:Syntax}

{phang2}{cmd: orChart} {it:depvars} [{help if}] [{help in}] [{help using}] [{help pweight}], 
{break} {opt c:ommand(estimation_command)} {opt rhs(indepvar [controlvars])} {opt case0(var)} {opt case1(var)}
{break} [{opt globalif}] [{opt regopts(regression_options)}] [{it:{help graph twoway:twoway_options}}]




{synoptset 16 tabbed}{...}
{marker Options}{...}
{synopthdr:Options}
{synoptline}
{p2coldent:* {opt c:ommand()}}Indicates the estimation command to be utilized.{p_end}
{p2coldent:* {opt rhs()}}Specify the right-hand-side variables, beginning with the input of interest and listing control variables if desired.{p_end}
{synopt:{opt globalif}}When applied, allows an if-condition to be set for each dependent variable separately. Before running the command with this option, create a global macro containing “&” followed by the logic expression needed for that variable. (Such as {it: global depvar “& ifvar==1”}).{p_end}
{synopt:{opt regopts()}}Set any desired options for the regression command.{p_end}
{synopt:{it:tw_options}}Specify any options needed for the graph.{p_end}
{synoptline}
{p 4 6 2}{it:(A * indicates required options.)}{p_end}

{title:Author}

Benjamin Daniels
bdaniels@worldbank.org