#! /bin/bash
HH=0
HT=0
TH=0
TT=0
declare -A Dict
for i in $(seq 1 50)
do
flip1=$((RANDOM%2))
flip2=$((RANDOM%2))
if [[ $flip1 == 1 && $flip2 == 1 ]]
then
	Dict[$i]="HH"
	((HH++))
elif [[ $flip1 == 1 && $flip2 == 0 ]]
then
        Dict[$i]="HT"
        ((HT++))
elif [[ $flip1 == 0 && $flip2 == 1 ]]
then
        Dict[$i]="TH"
        ((TH++))

else
	Dict[$i]="TT"
	((TT++))
fi
done
echo "HH : $HH"
echo "HT : $HT"
echo "TH : $TH"
echo "TT : $TT"
HH=`expr $HH \* 100 / 50 `
echo "Percentage of HH is $HH % "
HT=`expr $HT \* 100 / 50`
echo "Percentahe of HT is $HT %" 
TH=`expr $TH \* 100 / 50 `
echo "Percentage of TH is $TH % "
TT=`expr $TT \* 100 / 50`
echo "Percentahe of TT is $TT %"

