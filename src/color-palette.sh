#!/bin/sh
dir="."   #Set the default temp dir
tmpA1="$dir/spectrumhist_1_$$.png"
tmpB1="$dir/spectrumhist_1_$$.cache"
trap "rm -f $tmpA1 $tmpB1; exit 0" 0   #remove temp files
trap "rm -f $tmpA1 $tmpB1; exit 1" 1 2 3 15  #remove temp files
if [ $# -eq 2 ]
	then
	colors=$2
else
	colors=8
fi
convert -quiet -regard-warnings "$1" -alpha off +dither -colors $colors -depth 8 +repage "$tmpA1"
convert "$tmpA1" -set colorspace RGB -colorspace rgb -format %c -define histogram:unique-colors=true histogram:info:- | \
		sed -n 's/^ *\(.*\): (\(.*,\)\(.*,\)\(.*\)) #\(.*\) rgb(\(.*\))$/\1 \2 \3 \4 \5 \6/p' | \
		sort -n -k 1,1 | \
		awk -v wd=10 -v mag=1 '
			{ list=""; i=NR; count[i]=$1; rgb[i]=$2 $3 $4; hex[i]=$5; hsl[i]=$6 }
			END { for (i=1; i<=NR; i++)
				    { ht[i]=int(10000*count[i]/count[NR])/100; list="{\"counts\":\""count[i]"\",\"rgb\":\""rgb[i]"\",\"hex\":\""hex[i]"\"}" list; if(i<NR){list = ",\n" list}}
				{list="{\"result\":[" list "]}";print list; } } '