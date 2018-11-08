{smcl}
{* Sep 10th 2017}
{hline}
Help for {hi:knapsack}
{hline}

{title:Title}

{phang2} {cmdab:knapsack}{hline 2} implements a solution for the 0-1 Knapsack Problem as described in {browse "http://www.es.ele.tue.nl/education/5MC10/Solutions/knapsack.pdf":http://www.es.ele.tue.nl/education/5MC10/Solutions/knapsack.pdf}. Given a total budget, and data containing each potential item's cost and value, {cmd:knapsack} returns the maximum possible total value that can be purchased using the budget.{p_end}

{phang2}If {opt gen:erate()} is specified, {it:newvarname} is created, containing 1 if the item is in the optimal set and 0 if it is not.{p_end}

{title:Syntax}

{phang2}{cmd:knapsack} {it:budget} , {opt p:rice(varname)} {opt v:alue(varname)} [{opt gen:erate(newvarname)}]{p_end}

{title:Demo}

	sysuse auto, clear
	keep mpg price
	rename (mpg price)(cost value)

	knapsack 500, p(cost) v(value) gen(chosen)

	di "`r(max)'"
	table chosen , c(sum cost sum value)


{title:Author}

Benjamin Daniels
bbdaniels@gmail.com
