mkdir results
cd results
lab="Oceania"
chr=15

RELATE_PATH="../relate_binaries/relate_v1.1.9_x86_64_dynamic/bin/Relate"

#This takes about 4 minutes
${RELATE_PATH} \
    --mode All \
    --haps "../data/data_subgroups/SGDP_input_${lab}_chr${chr}.haps.gz" \
    --sample "../data/data_subgroups/SGDP_input_${lab}_chr${chr}.sample.gz" \
    --map "../data/genetic_map_chr${chr}_combined_b37.txt" \
    --dist "../data/data_subgroups/SGDP_input_${lab}_chr${chr}.dist.gz" \
    -m 1.25e-8 \
    -N 30000 \
    -o "SGDP_${lab}_chr${chr}"

gzip SGDP_${lab}_chr${chr}.*