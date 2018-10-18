{smcl}
{* Apr 12th 2018}
{hline}  **adds horizontal line**
Help for {hi:applyCodebook}  **makes it bold (hiliight)**
{hline}

{title:Description}

{p}{cmd:applyCodebook} **Shows command, in bold.**
imports variable labels from an Excel codebook file with columns {it:varname} as well as {it:varlab} and/or {it:vallab}. **It is italic**

{title:Syntax}

{p}{cmd:applyCodebook} {help using}, **Shows helpfile link to 'using'**

[{opt varlab}] [{opt vallab}] [{opt rename}] [{opt recode}] **Alternative to {cmd}**

{title:Instructions}

{p}Specify {opt varlab} to apply variable labels from the column {it:varlab}. Specify {opt vallab} to apply value labels from the column and sheet {it:vallab}. Specify {opt rename} to rename variables from the column {it:rename}. Specify {opt recode} to apply recodes from the column {it:recode} (normal syntax).

{p}If {opt vallab} is specified, the Excel codebook file must also have a {it:vallab} sheet with a {it:row} for every value of every value label to be applied. The column entries {bf:must} indicate:{p_end}

{p 2 5} **1st #:how many char to indent first line, 2nd #: how much to indent the second and subsequent line. 3rd #: how much to bring in the right margin on all lines, 4th: total width for the para.**

{bf:1)} The name of the value label (corresponding to the value labels in the first sheet) in {it:name}.{p_end}
{p 2 5}{bf:2)} The value (unique within label; numeric) in {it:value}.{p_end}
{p 2 5}{bf:3)} The label for the value in {it:label}.{p_end} // way to end para w/o having a blank line between paras.


{title:Author}

Benjamin Daniels
bbdaniels@gmail.com

{p_end}