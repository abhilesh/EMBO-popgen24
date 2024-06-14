mkdir popsizes
cd popsizes

lab="Africa"
chr=15

RELATE_BINARIES="../relate_binaries/relate_v1.1.9_x86_64_dynamic"

${RELATE_BINARIES}/bin/RelateCoalescentRate \
--mode EstimatePopulationSize \
-i "../results/SGDP_${lab}_chr${chr}" \
-o "SGDP_${lab}_chr${chr}" \
--bins 3,7,0.25 \
--poplabels "../data/poplabels/SGDP_${lab}.poplabels"