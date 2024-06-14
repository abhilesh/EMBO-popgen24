RELATE_BINARIES="relate_binaries/relate_v1.1.9_x86_64_dynamic"

lab="Africa"
chr=15

${RELATE_BINARIES}/bin/RelateCoalescentRate \
--mode FinalizePopulationSize \
-o "SGDP_${lab}_chr${chr}" \
--poplabels "data/data_subgroups/SGDP_input_${lab}_chr${chr}.poplabels"