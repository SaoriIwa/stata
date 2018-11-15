{smcl}
{* Nov 15th 2018}
{hline}
Help for {hi:randReg}
{hline}

{title:Title}

{phang2}{cmd:randReg} {hline 2} provides simulation results and visual illustration of randomization-based p-values.


{title:Syntax}

{p 8 8 2}{cmd:randReg} {it:estimation_model} [{help if}] [{help in}], {opth t:reatment(varname)} 
[{cmd:reps(}{it:#}{cmd:)}] [{opth strata(varname)}] [{cmd:s:eed(}{it:#}{cmd:)}] [{cmd:r:ound(}{it:#}{cmd:)}] ///{break} 
[{opt graph}] [{cmd:ci(}{it:#}{cmd:)}] [{cmd:title(}{it:time_name}{cmd:)}] [{cmd:subtitle(}{it:subtitle_name}{cmd:)}] [{opt graphopts(tw_options)}] [{it:est_options}]{p_end}

{phang2}Whereas {it:estimation_model} must specify the full estimation command and model to be fit for analysis, and {cmd:treatment()} must be a binary variable with control as 0 and treatment as 1.{p_end}

{synoptset 16 tabbed}{...}
{marker Options}{...}
{synopthdr:Options}
{synoptline}

{synopt:*{opt t:reatment()}} Indicate binary treatment variable. Control should be 0, and treatment should be 1.This option is required.{p_end}
{synopt:{opt reps()}}Specify the number of iterations to attempt with randomly generated treatment and control status whose frequencies match the actual frequencies. The default is 100.{p_end}
{synopt:{opt strata()}}Specify a categorial variable containing strata, if any. Simulation treatment is assigned with equal probability within strata, preserving actual within-strata treatment proportions.{p_end}
{synopt:{opt s:eed()}}Set randomization seed for reproducibility.{p_end}
{synopt:{opt r:ound()}}Specify rounding units for results. The default is 0.01.{p_end}
{break}
{break}
{synopt:{opt graph}}Visually display distribution of results and location of regression beta.{p_end}
{synopt:{opt ci()}}Set width of one-sided confidence interval in % to illustrate. Default is 95.{p_end}
{synopt:{opt title()}}Specify title of the graph.{p_end}
{synopt:{opt subtitle()}}Specify subtitle of the graph. {p_end}
{synopt:{opt graphopts()}}Set any desired options for the graph.{p_end}
{synopt:{it:est_options}}Specify any options needed for the estimation model.{p_end}

{synoptline}
{p 4 6 2}{it:(A * indicates required options.)}{p_end}

{title:Examples}

	clear
	set obs 1000
	gen treat_rand = runiform()
	gen treatment = treat_rand > 0.5
	gen error = rnormal()
	gen outcome = .3*treatment + 3*error
	randReg reg outcome treatment , seed(4747) t(treatment) graph reps(100) title(my_tittle) subtitle(my_subtitle)
		graph export "test.png" , replace
		return list


{title:Author}

Benjamin Daniels
bdaniels@worldbank.org

{title:References}

{p}Kerwin, Jason. "Randomization inference vs. bootstrapping for p-values." {browse "https://jasonkerwin.com/nonparibus/2017/09/25/randomization-inference-vs-bootstrapping-p-values/":https://jasonkerwin.com/nonparibus/2017/09/25/randomization-inference-vs-bootstrapping-p-values/}{p_end}

