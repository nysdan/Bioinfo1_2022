#!/bin/bash
# $1 es el query y $2 el subject (db)

makeblastdb -in $2 -dbtype nucl -out $2.base
blastn -query $1 -db $2.base -outfmt 6 -out tablast.$1-$2 -num_threads 2 -evalue 1e-50
