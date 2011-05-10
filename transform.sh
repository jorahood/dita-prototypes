#if [ $# -ne 4 ]
#then
#    echo "Syntax: transform.sh <kb-domain> <kb-audience> <dmmX-subdir> <input-file>"
#    exit
#fi

ant -Dkb.domain=all -Dkb.audience=default  -Dargs.dmm=dmm3 -Dargs.input_file=axvp.ditamap -f 'build-kb.xml' #-q
