#! /bin/bash
HHH=0
HHT=0
HTH=0
THH=0
TTH=0
THT=0
HTT=0
TTT=0
declare -A Dict
for i in $(seq 1 50)
do
flip1=$((RANDOM%2))
flip2=$((RANDOM%2))
flip3=$((RANDOM%2))
if [[ $flip1 == 1 && $flip2 == 1 && $flip3 == 1 ]]
then
	Dict[$i]="HHH"
	((HHH++))
elif [[ $flip1 == 1 && $flip2 == 1 && $flip3 == 0 ]]
then
        Dict[$i]="HHT"
        ((HHT++))
elif [[ $flip1 == 1 && $flip2 == 0 && $flip3 == 1 ]]
then
        Dict[$i]="HTH"
        ((HTH++))
elif [[ $flip1 == 0 && $flip2 == 1 && $flip3 == 1 ]]
then
        Dict[$i]="THH"
        ((THH++))
elif [[ $flip1 == 0 && $flip2 == 0 && $flip3 == 1 ]]
then
        Dict[$i]="TTH"
        ((TTH++))
elif [[ $flip1 == 0 && $flip2 == 1 && $flip3 == 0 ]]
then
        Dict[$i]="THT"
        ((THT++))
elif [[ $flip1 == 1 && $flip2 == 0 && $flip3 == 0 ]]
then
        Dict[$i]="HTT"
        ((HTT++))
else
        Dict[$i]="TTT"
        ((TTT++))
fi
done
echo "HHH : $HHH"
echo "HHT : $HHT"
echo "HTH : $HTH"
echo "THH : $THH"
echo "TTH : $TTH"
echo "THT : $THT"
echo "HTT : $HTT"
echo "TTT : $TTT"
HHH=`expr $HHH \* 100 / 50 `
echo "Percentage of HHH is $HHH % "
HHT=`expr $HHT \* 100 / 50`
echo "Percentahe of HHT is $HHT %" 
HTH=`expr $HTH \* 100 / 50 `
echo "Percentage of HTH is $HTH % "
THH=`expr $THH \* 100 / 50`
echo "Percentahe of THH is $THH %"
TTH=`expr $TTH \* 100 / 50`
echo "Percentahe of TTH is $TTH %"
THT=`expr $THT \* 100 / 50`
echo "Percentahe of THT is $THT %"
HTT=`expr $HTT \* 100 / 50`
echo "Percentahe of HTT is $HTT %"
TTT=`expr $TTT \* 100 / 50`
echo "Percentahe of TTT is $TTT %"

