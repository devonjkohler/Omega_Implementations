module SBMLCounterfactual

using Omega
using StatsBase
using Random
using Plots
using Distributions
using PyCall
using DataStructures

te = pyimport("tellurium")

function get_parameters(sbml_file_path)
    """
    Function to extract model parameters from sbml. Returns dictionary with
    a transition matrix, species list, and rates list.
    """
    ## Load SBML
    sbml = te.loadSBMLModel(sbml_file_path)

    ## Transition Matrix
    transition = sbml.getFullStoichiometryMatrix()
    transition = transpose(transition)

    ## Extract Species
    species_ids = sbml.getFloatingSpeciesIds()
    species_starting_vals = sbml.getFloatingSpeciesAmounts()
    species = Dict(species_ids . => species_starting_vals)

    ## Extract Rates
    rates = Dict(sbml.getGlobalParameterIds() . => sbml.getGlobalParameterValues())

    return Dict("transition" => transition, "species" => species, "rates" => rates)

end

end # module
