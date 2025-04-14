# Unveiling Mechanisms in Vaginal Microbiome Dynamics through Model-Driven Analysis

In this study, we analyzed metagenomic data obtained from human vaginal swabs to generate in silico predictions of BV-associated bacterial metabolic interactions via genome-scale metabolic network reconstructions (GENREs). We grew several of the most common co-occurring bacteria (Prevotella amnii, Prevotella buccalis, Hoylesella timonensis, Lactobacillus iners, Fannyhessea vaginae, and Aerrococcus christenssii) on the spent media of Gardnerella species and performed metabolomics to identify potential mechanisms of metabolic interaction.

## [Simulations](https://github.com/lrd3uu/bacterialvaginosis_interactions/tree/main/Simulations)
Code required to generate and run the 15,000 simulations analyzed in the aforementioned study  
### 1_modelupdate_2_mediacontextualize.ipynb  
This script contextualizes all existing .sbml reconstructions to reflect a BV+ cervicovaginal fluid environment. Metabolites are added to the in silico media environemnt that are statistically significantly present more in BV+ cervicovaginal fluid than in BV- cervicovaginal fluid (included metabolites specified in the .ipynb markdown file). Exchange reactions for each metabolite in the BV+ cervicovaginal fluid environment are set to 0,1000 to allow for metabolite import. 

**Input:** A folder of metabolic network reconstructions called 'reconstructions'. All reconstructions must have .sbml extensions. This directory is available in our repository.

**Output:** A folder of contextualized (BV+ cervicovaginal fluid environment) metabolic network recontructions called 'BV+_reconstructions'. All updated reconstructions have an .sbml extension. This directory is available in our repository. 

### 3_metabolite_sharing_modleing.ipynb  
This script determines which metabolites are shared and competed for between pairs bacterial reconstructions in an iterative manner. 

**Input:** A folder of BV+ cervicovaginal fluid contextualized reconstructions called 'BV+_context'. All reconstructions in the folder should be in .sbml format. This directory is availabile in our repository. 

**Output:** 1) 'mutual_metabolites_all.csv'. This file contains a list of metabolites that are shared between two bacterial reconstructions in the simulation. The file specified the name of the exchange reaction that is responsible for the import/export of the shared metabolite, the name of the shared metabolite, which iteration of simulation the metaolite is shared, the direction of the sharing of the metabolite, and the names of the two bacterial reconstrucitons that are sharing the specified metabolite. This output file from our simulation is available in releases/v1.0.0  
2) 'mutual_flux_change_all.csv'. This file specifies the increase in growth (or metabolic flux change) due to mutualism (sharing of metabolites) for each bacterial reconstruction in the pairwise growth simulation. This output file from our simulation is available in releases/v1.0.0  
3) 'competition_metabolites_all.csv'. This file contains a list of metabolites that are competed for between the two bacterial reconstructions in the simulation. This file specifies the name of the exchange reaction that is responsible for the import/export of the competed for metabolite, the name of the competed for metabolite, which iteration of simulation the metabolite is competed for, how many times it is competed for, and the names of the two bacterial reconstructions that are competing ofr the specified metabolite. This output file from our simulation is available in releases/v1.0.0  
4) 'competition_flux_change_all.csv'. This file specifies the metabolic flux before compeition over a specific metabolite and after compeition over a specific metabolite for each pair of bacterial reconstructions in the simulation. This output file from our simulation is available in releases/v1.0.0

### 4_transprot_id.ipynb
This script creates a list of all transport reactions across the bacterial reconstrucitons in the BV+_reconstrucitons directory.

**Input:** A directory of reconstrucitons in .sbml format titled 'BV+_reconstructions'. This directory is available in this repository.

**Output:** A file called transport_rxns.csv, which lists all transport reactions across reconstructions in the BV+_reconstrucitons repository.

### reaction_annotations.ipynb
This script determines KEGG reaction subsystems for each reaction in a list of reactions by interfacing with the ModelSEED reaction database and KEGG. 

**Input:** A file called 'reactionpresence.csv' which contains a list of reactions of interest. The 'reactionpresence.csv' file used in our simulations is present in this directory. 

**Output:** A file called 'reaction_annotations.csv' which specifies the KEGG reaction subsystem for each reaction in the 'reactionpresence.csv' list. The 'reaction_annotations.csv' file that was the output of our simulations is present in this directory. 

### metabolite_sharing_modeling.py
This script has the same functionality as the '3_metabolite_sharing_modeling.ipynb' file mentioned above, but written as a .py script to be able to run on the UVA HPC resources.

**Input:** See above - 1_modelupdate_2_mediacontextualize.ipynb  

**Output:** See above - 1_modelupdate_2_mediacontextualize.ipynb  

### competition_mutualism.slurm
This script is used to run metabolite_sharing_modeling.py on the UVA HPC resources.

**Input:** metabolite_sharing_modeling.py

**Output:** See above - 1_modelupdate_2_mediacontextualize.ipynb

## [Analysis](https://github.com/lrd3uu/bacterialvaginosis_interactions/tree/main/Analysis)
Follow-up analysis of the simulations output. 



## [Metabolomics](https://github.com/lrd3uu/bacterialvaginosis_interactions/tree/main/Metabolomics)

The processed metabolomics data files used for the data analysis portion. The raw files for the [method development](https://www.dropbox.com/scl/fo/yz5gpej71avgetdl2aa26/h?rlkey=m9wvvi0ep7y8qc00cnmnxc5jh&dl=0), [samples and standard curves](https://www.dropbox.com/scl/fo/wlsa6q8h8ruk6xkc2fiaz/h?rlkey=17krvbcmsbnfjajng3jzu4ncd&dl=0), as well as [metabolomics data](https://www.dropbox.com/scl/fo/dsaejf46kphv5vzhc67j0/h?rlkey=31rfyt9nam8m91i9py38zpuvu&dl=0) from our untargeted metabolomics analysis performed by the UVA mass spectrometry team



