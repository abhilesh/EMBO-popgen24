lab="Africa"
chr=15

RELATE_PATH="relate_binaries/relate_v1.1.9_x86_64_dynamic/bin/Relate"
RELATE_BINARIES="relate_binaries/relate_v1.1.9_x86_64_dynamic"

${RELATE_BINARIES}/scripts/TreeView/TreeView.sh \
    --haps "data/data_subgroups/SGDP_input_${lab}_chr${chr}.haps.gz" \
    --sample "data/data_subgroups/SGDP_input_${lab}_chr${chr}.sample.gz" \
    --anc "results/SGDP_${lab}_chr${chr}.anc" \
    --mut "results/SGDP_${lab}_chr${chr}.mut" \
    --poplabels "data/data_subgroups/SGDP_input_${lab}_chr${chr}.poplabels" \
    --bp_of_interest 20000000 \
    --years_per_gen 28 \
    -o "SGDP_${lab}_chr${chr}_BP20000000"