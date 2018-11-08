{smcl}
{* Nov 8th 2018}
{hline}
Help for {hi:sumStats}
{hline}

{title:Title}

{phang2}{cmd:sumStats}{hline 2} easily generates a table of summary statistics with various {help if}-restrictions and prints them to an .xls output file, specified with {help using}.

{title:Syntax}

{phang2}{cmdab:sumStats} ({it:varlist_1} {help if} {it:condition_1}) [({it:varlist_2} {help if} {it:condition_2}) ...] {help using}{it: "mytable_name.xls"}, stats({it:{help tabstat##statname:stats_list}}) [{it:{help xml_tab:xml_formatting_options}}]{p_end}

{phang2}Where {cmdab:using} must include format specification (.xls). For example: using {it:"file_name.xls"}. {p_end}
{phang2}Where {it:xml_formatting_options} refers to Table formatting options of {help xml_tab:xml_tab}.{p_end}


{title:Description}

{phang2}{cmd:sumStats} will produce the requested statistics for the specified variables in each list with the specified conditions for that list. Variable labels will automatically be truncated to 30 characters and attached. Specify with {help using} the desired file path for the output table, and include any table formatting options from {help xml_tab:xml_tab} for this command.{p_end}


{title:Examples}

{p 4 4 2} sumStats (mpg if foreign ==1) (mpg if foreign ==0) using "my_table.xls", stats(su semean med) replace f((S2110) (SCCB0 N2302 N2322)) title("My Table") ///{break}
rnames("Domestic" Mileage(mpg) "Foreign") cnames(Mean SE 50p) font("Times New Roman" 11) {p_end}

{title:Author}

Benjamin Daniels
bbdaniels@gmail.com