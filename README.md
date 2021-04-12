# Omega_Implementations
This repository explores a variety of biological models implemented using the probabilistic programming language Omega:

https://github.com/zenna/Omega.jl

## Problem

Modeling complex sysmtems, such as cells, is a major challenge with many complexities such as Feedback loops (cycles), Non-linear relationships, and Time components. Ideally our model should be able to be conditioned on real world data, make interventions, and eventually ask counterfactual questions, such as "Given a person had a low abundance of a protein and had a disease, what would have happened if they had a high abundance of the protein?"

The probabilistic programming language Omega, implemented in Julia, gives the ability to accomplish all three of these goals. Additionally it gives us the flexibility to model a constantly changing system.

## Models

1.       Lotka-Volterra: A baseline model using the predator–prey equations

2.       Rule-based model of Kinase phosphorylation: https://github.com/djinnome/kappa-counterfactuals 

3.       Organelle Count: One equation model describing cell counts

4.       Artificial Randomly Generated Signaling Network: https://github.com/SunnyXu/artificial_random_signaling_network

These models display some of the applications where casual inference and Omega can shine when applied to biological problems. Please see the corresponding jupyter notebook for each model for more details.
