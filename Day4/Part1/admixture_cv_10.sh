for K in 2 3 4 5 6 7 8;
    do 
        software/admixture_linux-1.22/admixture --cv=10 -B ./data/BrahuiYorubaSimulationChrom22.admixture.geno $K | tee log${K}.out;
    done