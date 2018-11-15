{smcl}
{* November 14th 2018}
{hline}
Help for {hi:manskiBounds}
{hline}

{title:Title}

{phang2}{cmd:manskiBounds} {hline 2} implements Manski bounding simulations as in Andrabi and Das (2017). {cmdab:manskiBounds} takes a binary outcome variable that contains missing data and a binary treatment variable, and performs simulation. See {help manskiBounds##desc:Description} for more detail.


{title:Syntax}

{phang2}{cmd:manskiBounds} {it:regression_model} [{help if}] [{help in}], [{it:regression_options}] {opth t:reatment(varname)} {opth o:utcome(varname)} [{opt s:eed(integer)}]{p_end}

{phang2}Whereas treatment and outcome must be binary and outcome must contain some missing values. The outcome is the first variable in the regression, and treatment is the second variable. The regression command must produce an "ordinary" results table (as in {help regress}).{p_end}


{marker desc}{...}
{title:Description} 

{p 7 7 2} In the first simulation (at the "0" (0%) on the x axis in the produced graph), {cmdab:manskiBounds} produces the "extreme" bounds: all missing observations in outcome are assigned the value that would produce the furthest opposite effect from the original regression result. For example, if the original regression coefficient of the treatment was negative, all missing will be assigned positive value. This is then relaxed by varying the "bounding fraction" until outcome simulation is random in both treatment and control groups with missing outcomes (50%). At 50%, the estimate induces measurement error in the original estimate proportional to the number of missing outcome values. The displayed graph shows this relaxation process, as well as the bounding fractions at which p<0.01 and p<0.05 are attained, and the estimated effect from the original model on non-missing data.{p_end}



{title:Examples}

{pmore}sysuse auto, clear

{pmore}*create outcome binary variable with missing data {break}
gen cutoff=. {break}
replace cutoff=1 if mpg >=24 & mpg!=. {break}
replace cutoff=0 if mpg <18 {break}

{pmore}qui do "${directory}\manskiBounds.ado"

{pmore}{inp: manskiBounds reg cutoff foreign, treatment(foreign) outcome(cutoff)}


{title:References}

{pmore}In Aid We Trust: Hearts and Minds and the Pakistan Earthquake of 2005 {break}
Tahir Andrabi and Jishnu Das{break}
The Review of Economics and Statistics 2017 99:3, 371-386 {break}
{browse www.mitpressjournals.org/doi/abs/10.1162/REST_a_00638:http://www.mitpressjournals.org/doi/abs/10.1162/REST_a_00638} {p_end}


{title:Author}

Benjamin Daniels
bdaniels@worldbank.org
