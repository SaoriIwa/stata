{smcl}
{* Nov 14th 2017}
{hline}
Help for {hi:sumstats}
{hline}

{title:Title}

{phang2}{cmd:sumstats} {hline 2} easily generates a table of summary statistics with various {help if}-restrictions and prints them in a .xlsx file. {p_end}

{title:Syntax}

{phang2}{cmd:sumstats} ({it:varlist_1} [{help if}]) [({it:varlist_2} [{help if}]) ...] {help using} {it:"$path/output.xlsx"} [{help weight}], stats({it:{help tabstat##statname:stats_list}}) [replace] {p_end}


{title:Description}

{phang2}{cmd:sumstats} will print to Excel the requested statistics for the specified variables in each list with the specified conditions for that list.
Specify with {help using} the desired file path for the output. {bf:aweights} and {bf:fweights} are allowed; statistics are calculated with {help tabstat}.

{title:Example}

{inp} sumstats (price mpg if foreign == 0) (price displacement length if foreign == 1) using "test.xlsx" , replace stats(mean sd)


{title:Author}

Benjamin Daniels
bbdaniels@gmail.com
