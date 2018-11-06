{smcl}
{* Feb 8th 2018}
{hline}
Help for {hi:exportCodebook}
{hline}

{title:Title}

{phang2}{cmdab:exportCodebook} {hline 2} reads the currently open dataset and either (A) creates a codebook for it in the specified location; or (B) by specifying the .dofiles with {it:using}, reads a series of .dofiles that reference the data and keeps only the variables that those dofiles reference.

{title:Syntax}

{phang2}{cmdab:exportCodebook} {it:file_name} [{help using}] [{it:dofile_list}], [compact] {break}
where {it:file_name} is a name for the file to be saved in .txt format. {p_end}

{title:Options}

{phang2}{cmdab:compact} creates a compact codebook which contains variable name, obs, number of unique value, label used, and basic statistics(mean, min, max). {p_end}


{title:Notes}

{phang2}{cmdab:exportCodebook} can only use dofiles that reference the FULL NAME of each variable. Using shortcuts and abbreviations will cause the dataset to be incorrect. It will also keep variables whose names contain other variables that are referenced.{p_end}


{title:Examples}

{pmore}{inp:exportCodebook {it:"${directory}{it:/my_codebook"}}}

{pmore}{inp:exportCodebook {it:"${directory}{it:/my_codebook"}} using {it:"exportCodebook.ado"}}

{pmore}{inp:exportCodebook {it:"${directory}{it:/my_codebook"}} using {it:`" "exportCodebook.ado" "exportCodebook2.ado" "'}}

{pmore}{inp:exportCodebook {it:"${directory}{it:/my_codebook"}} 	, compact}

{title:Author}

Benjamin Daniels
DIME Analytics
World Bank Group

bdaniels@worldbank.org
