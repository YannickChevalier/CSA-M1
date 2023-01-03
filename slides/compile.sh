#! /bin/bash

prefix=expose
modules=slides
tex_name=`find . -name "${prefix}$1*.tex" -print`
base_name=$(basename ${tex_name} .tex)
base_name=${base_name#$prefix}

out_names=
for module in ${modules} ; do
    out_names="${out_names} $(pwd)/${prefix}-${module}-${base_name}.pdf"
done


cd ..
for out_name in ${out_names} ; do 
    make "${out_name}"
done

