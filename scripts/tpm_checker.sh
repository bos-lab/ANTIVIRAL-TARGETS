#!/bin/bash

out_dir=/panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/results/covid_samples

dirs=($(ls $out_dir))

for i in "${dirs[@]}"; do

        if [[ -f "$out_dir/$i/tpms/${i}_gene_tpm.tsv" ]]
        then
                echo "Successful: $i"
        else
                echo "Failed: $i"

        #cd $out_dir/$i
        #ls
fi
done

#add this little command to print only the ones that failed: ./ass_checker.sh | grep "Failed"
