# ***spmapper*: An R package spatial planning tool to indicate the foraging value of marine areas to breeding seabirds**

<br>

# Background 
Offshore wind energy is central to the UK's renewable energy strategy and is projected to expand substantially in terms of generation capacity, and in the number and area coverage of offshore windfarms (OWFs). OWFs have the potential for adverse impacts on marine wildlife, including seabirds, which travel through and forage in offshore areas. Among other possible impact mechanisms, OWFs may impact seabirds via displacement from foraging habitat, that is, seabirds may avoid windfarms in areas that they might otherwise forage. Because of this, displacement from windfarms may correspond to a loss of access to prey for foraging seabirds, with energetic and demographic consequences. 

The breeding season—in particular the period where breeding adults are rearing chicks—is an energetically demanding time for seabirds. Seabirds must acquire sufficient prey to sustain their own energetic requirements, and for the provisioning of their chicks to fledging. Safeguarding breeding success is important for seabird population dynamics and influences their long-term resilience. Because of this—and because seabirds must forage in areas centred on the breeding colony—understanding and estimating the potential impacts of OWF-related displacement during the breeding season is critical for effective seabird conservation.

It is not possible to observe foraging success at sufficiently fine scales or with comprehensive spatial coverage to empirically map seabird prey consumption, and so describe the energetic value of marine areas to specific seabird species. To address this knowledge gap, we developed *spmapper*, a spatial planning tool to indicate the foraging value of marine areas to key seabird species that breed on the coasts and islands of the UK (Black-legged Kittiwake *Rissa tridactyla*, Common guillemot *Uria aalge*, and Razorbill *Alca torda*).

*spmapper* is underpinned by seabird time-activity budget and energetics data collated for Black-legged kittiwake *Rissa tridactyla*, Common guillemot *Uria aalge*, and Razorbill *Alca torda*, published via the NERC Environmental Information Data Centre (Leedham et al. 2025). *spmapper* was written in the programming language R (R Core Team, 2017). Information on how to cite *spmapper* is included in the 'How to cite' section. 

<br>

# Purpose & applications
*spmapper* is a spatial planning tool that generates maps of estimated seabird prey consumption by chick-rearing seabirds for three species. The tool generates these maps by calculating the mass of fish prey taken by all breeding seabirds comprising the UK & Ireland species network for each of three seabird species, according to species-specific behaviour, physiology, diet, demography and population size; and then estimates the spatial origin of seabird prey removal according to models of marine space use (utilisation distributions, UDs). See the 'Methods' page for further details. 

The central function of *spmapper* is to retrieve estimates for the absolute and proportional quantities of prey taken by three focal species networks from within areas of interest to the user. In other words, the aim of the tool is to indicate the energetic or foraging value of marine areas to seabirds in terms of their prey consumption at the shelf-seas scale. The primary application for these outputs includes comparison of the total prey consumption in candidate areas for offshore renewable developments, or within areas for protective conservation measures. These outputs can be used to assist with marine spatial planning for these purposes.


<br>

# Useful Links
  
  [Link to the Ecowings project](https://ecowind.uk/projects/ecowings/)

------------------------------------------------  
## Reference list

Leedham, O., Searle, K. R., Harris, M. P., Newell, M., Wanless, S., Mobbs, D. C., Butler, A. and Daunt, F. (2025) "Time-activity budgets and energetics of common guillemot, razorbill, Atlantic puffin, and black-legged kittiwake”, *NERC EDS Environmental Information Data Centre*. doi: <a href="https://www.doi.org/10.5285/07b1105a-4a14-47e3-b491-9af59be90aff" target="_blank">
10.5285/07b1105a-4a14-47e3-b491-9af59be90aff
</a>.

R Core Team, R. (2013) *R: A language and environment for statistical computing*. Vienna, Austria.


<br>
