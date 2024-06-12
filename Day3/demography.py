# %%
import msprime
import demesdraw
from matplotlib import pyplot as plt

#%%
# Add demography
demography = msprime.Demography()

# Add N1 and N2 populations
demography.add_population(name="POP1", initial_size=120_000)
demography.add_population(name="POP2", initial_size=4_000)

# Add Ancestral population
demography.add_population(name="ANC", initial_size=7_000_000)

# Add population split
demography.add_population_split(time=8000, derived=["POP1", "POP2"], ancestral="ANC") # split 8k generations ago

# Add pervasive migration
demography.set_symmetric_migration_rate(populations=["POP1", "POP2"], rate = 0.1)

print(demography)

# Plot a schematic of the model
demesdraw.tubes(demography.to_demes(), ax=plt.gca(), seed=1, log_time=True)
plt.show()

# %%
# Simulate ancestry
ts = msprime.sim_ancestry(
        {"POP1": 50, "POP2": 50}, 
        demography=demography, 
        recombination_rate=8.4e-9,
        sequence_length=1_000,
        random_seed=42)
print(ts)

# %%
# Adding mutations
mts = msprime.sim_mutations(ts, rate=3.5e-9, random_seed=42)
print(mts.tables.sites)
# %%
