{smcl}
{* Sep 22nd 2017}
{hline}
Help for {hi:cleanLabels}
{hline}

{title:Title}

{phang2}{cmdab:cleanLabels} {hline 2} removes characters from value labels. By default it removes “,” and “:” since these are known to cause issues with export commands. Optionally a different list can be specified, but " ` and ' cannot be removed at this time.

{title:Syntax}{phang2}{cmdab:cleanLabels} {help varlist} , [{opt r:emove(charlist)}]

{phang2} where {it:charlist} is character(s) to be removed from the value label of the variable

{title:Example}

{pstd}{inp:cleanLabels {it:village}, remove(WR_ ; )}
{break} Here the command removes WR_ and ; in the labels form {it: village} variable


{title:Author}

Benjamin Daniels
bdaniels@worldbank.org

Wenqing Zhu
wzhu2@worldbank.org
