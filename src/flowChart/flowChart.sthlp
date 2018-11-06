{smcl}
{* Sep 25th 2017}
{hline}
Help for {hi:flowchart}
{hline}

{title:Title}

{phang2}{cmdab:flowchart} {hline 2} allows for the creation of dynamically updating custom tables and flowcharts. Given an Excel spreadsheet with columns A, B, C, and D titled “logic”, “var”, “stat” and “value”, respectively, {cmdab:flowchart} replaces the “value” column with the requested statistic for the observations in the dataset that fit the condition expressed in “logic”. {p_end}

{p 8 8} "logic" specifies if statemend for the variable specified. "var" specifies the variable, for which to return the statistics. "stat" is the scalars expressed with r({it:statistics}), e.g. r(mean). "value" will be returned automatically. {p_end}

{title:Syntax}

{phang2}{cmdab:flowchart} {help using} {it:xlsx_file} [{help if}] [{help in}]{p_end}


{title:Examples}
	
	{inp:flowchart using {it:"flowChart.xlsx"}}


{title:Author}

Benjamin Daniels
bdaniels@worldbank.org
