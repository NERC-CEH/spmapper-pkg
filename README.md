---
title: "spmapper"
output: html_document
---
<hr>
DRAFT UNDER CONSTRUCTION: FOR UKCEH INTERNAL USE ONLY. DO NOT CIRCULATE.

<code>spmapper</code> is an R package spatial planning tool to indicate the foraging value of marine areas to breeding seabirds.

# Background 
Offshore wind energy is central to the UK's renewable energy strategy and is projected to expand substantially in terms of generation capacity, and in the number and area coverage of offshore windfarms (OWFs). OWFs have the potential for adverse impacts on marine wildlife, including seabirds, which travel through and forage in offshore areas. Among other possible impact mechanisms, OWFs may impact seabirds via displacement from foraging habitat, that is, seabirds may avoid windfarms in areas that they might otherwise forage. Because of this, displacement from windfarms may correspond to a loss of access to prey for foraging seabirds. 

The breeding season—in particular the period where breeding adults are rearing chicks—is an energetically demanding time for seabirds. Seabirds must acquire sufficient prey to sustain their own energetic requirements, and for the provisioning of their chicks to fledging. Breeding outcomes are important for seabird population dynamics and their long-term resilience. Because of this—and because seabirds must forage in areas centred on the breeding colony—the impacts of OWFs during the breeding season are critical for seabird conservation.

It is not possible to observe foraging success at sufficient scales to empirically map seabird prey consumption, and so describe the energetic value of marine areas to specific seabird species. To address this, we developed <code>spmapper</code>, a spatial planning tool to indicate the foraging value of marine areas to key seabird species that breed on the coasts and islands of the UK (Black-legged Kittiwake *Rissa tridactyla*, Common guillemot *Uria aalge*, and Razorbill *Alca torda*).

<code>spmapper</code> is underpinned by seabird time-activity budget and energetics data collated for Black-legged kittiwake *Rissa tridactyla*, Common guillemot *Uria aalge*, and Razorbill *Alca torda*, published via the NERC Environmental Information Data Centre (Leedham et al. 2025). <code>spmapper</code> was written in the programming language R (R Core Team, 2017). Information on how to cite <code>spmapper</code> is included in the 'How to cite' section. 

<br>

# Purpose & applications
<code>spmapper</code> is a spatial planning tool that generates maps of seabird prey consumption by chick-rearing seabirds. The tool generates these maps by calculating the mass of fish prey taken by a seabird species network according to species-specific behaviour, physiology, diet, demography and population size; and then estimates the spatial origin of seabird prey removal according to models of marine space use (utilisation distributions, UDs). See the 'Methods' page for further details. 

[Define population of interest].<<<<<<<<<<<<<<<<<<<<<
 
The central function of <code>spmapper</code> is to retrieve estimates for the absolute and proportional quantities of prey taken by focal species from within areas of interest to the user. In other words, the aim of the tool is to indicate the energetic or foraging value of marine areas to seabirds in terms of their prey consumption at the shelf-seas scale. The primary applications for these outputs include comparison of the total prey consumption in candidate areas for offshore renewable developments, or within areas for protective conservation measures. 

[…to assist with marine spatial planning]<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

# Useful Links
  
  [Link to the Ecowings project](https://ecowind.uk/projects/ecowings/)

------------------------------------------------  
## Reference list

Leedham, O., Searle, K. R., Harris, M. P., Newell, M., Wanless, S., Mobbs, D. C., Butler, A. and Daunt, F. (2025) "Time-activity budgets and energetics of common guillemot, razorbill, Atlantic puffin, and black-legged kittiwake”, *NERC EDS Environmental Information Data Centre*. doi: <a href="https://www.doi.org/ 10.5285/07b1105a-4a14-47e3-b491-9af59be90aff">10.5285/07b1105a-4a14-47e3-b491-9af59be90aff</a>.

R Core Team, R. (2013) *R: A language and environment for statistical computing*. Vienna, Austria.
