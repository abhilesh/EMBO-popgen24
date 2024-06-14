chr=15
lab="Africa"

RELATE_BINARIES="relate_binaries/relate_v1.1.9_x86_64_dynamic"


# This will take around 4min
${RELATE_BINARIES}/scripts/EstimatePopulationSize/EstimatePopulationSize.sh \
-i "results/SGDP_${lab}_chr${chr}" \
-o "SGDP_${lab}_ne_chr${chr}" \
--poplabels "data/data_subgroups/SGDP_input_${lab}_chr${chr}.poplabels" \
-m 1.25e-8 \
--years_per_gen 28 \
--bins 3,7,0.25 \
--num_iter 2 \
--threads 4