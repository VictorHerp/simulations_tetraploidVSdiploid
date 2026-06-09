# Genetic load dynamics in tetraploids and diploids
### Forward genetic simulations using SLiM

[![DOI](https://img.shields.io/badge/DOI-10.1093%2Fevlett%2Fqraf036-blue)](https://academic.oup.com/evlett/advance-article/doi/10.1093/evlett/qraf036/8275878)

## Overview
This repository contains the SLiM simulation scripts and R analysis code associated 
with the publication:

> Muñoz Mora et al. (2025). *The hidden threat: genetic load dynamics in tetraploids 
> and diploids.* **Evolution Letters**, 9(6):696–705.

We use forward genetic simulations to compare the accumulation and expression of 
**masked** and **realized genetic load** in autotetraploid vs. diploid populations 
under two demographic scenarios: stable population size and population bottleneck.

## Key questions
- Does polyploidy buffer or amplify the accumulation of deleterious mutations?
- How does a bottleneck differentially affect genetic load in tetraploids vs. diploids?

## Repository structure
```
├── sim_stable_pop/        # SLiM scripts – stable population scenario 
├── sim_bottlenecked_pop/  # SLiM scripts – bottleneck scenario 
├── R_scripts/             # Plotting and statistical analysis
├── input/
│   ├── Burn-in_hs-input_partial_recessive_mut_tetraploids.txt
│   └── Burn-in_hs-input_partial_recessive_mut_diploids.txt
└── README.md
```
## Requirements

- [SLiM v4.x](https://messerlab.org/slim/)
- R ≥ 4.0 with packages: `ggplot2`, `dplyr`, `tidyr`

## How to run
To run the bottleneck and stable population simulations you need to load the files "Burn-in_hs-input_partial_recessive_mut_tetraploids" and "Burn-in_hs-input_partial_recessive_mut_diploids" into defineConstant("hs_input" ...) and defineConstant("hs_input_dip"...) respectively.

**1. Stable population simulations**
```bash
slim -d "hs_input='input/Burn-in_hs-input_partial_recessive_mut_tetraploids.txt'" \
     sim_stable_pop/tetraploid_stable.slim
```

**2. Bottleneck simulations**
```bash
slim -d "hs_input='input/Burn-in_hs-input_partial_recessive_mut_tetraploids.txt'" \
     sim_bottlenecked_pop/tetraploid_bottleneck.slim
```

**3. Plot results**
```r
source("R_scripts/plot_genetic_load.R")
```

## Citation

If you find any of these scripts useful, please cite the article: 

Muñoz Mora, V. H., Giannelli, F., Congiu, L., Morales, H. E., & Bertorelle, G. (2025). The hidden threat: genetic load dynamics in tetraploids and diploids. Evolution Letters, qraf036. 
https://academic.oup.com/evlett/advance-article/doi/10.1093/evlett/qraf036/8275878
