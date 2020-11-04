#! /bin/bash
echo "Enter the number of desired coin combination"
echo "1)Signlet" 
echo "2)Double" 
echo "3)Triple" 
read option
case $option in
1)
H=0
T=0
declare -A Dict
for i in $(seq 1 50)
do
flip1=$((RANDOM%2))
if [[ $flip1 == 1 ]]
then
        Dict[$i]="H"
        ((H++))
else
        Dict[$i]="T"
        ((T++))
fi
done
H=`expr $H \* 100 / 50 `
echo "H : $H % "
T=`expr $T \* 100 / 50`
echo "T : $T %"
declare -A Dict1
Dict1=([H]=$H [T]=$T)
max=0
for i in ${!Dict1[@]}
do
        (( $i > max || max == 0 ))&& max=$i
done
echo "The winning combinatioon :"
echo "$max : ${Dict1[$max]} %"
;;
2)
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
HH=`expr $HH \* 100 / 50 `
echo "HH : $HH % "
HT=`expr $HT \* 100 / 50`
echo "HT : $HT %"
TH=`expr $TH \* 100 / 50 `
echo "TH : $TH % "
TT=`expr $TT \* 100 / 50`
echo "TT : $TT %"
declare -A Dict1
Dict1=([HH]=$HH [HT]=$HT [TH]=$TH [TT]=$TT)
max=0
for i in ${!Dict1[@]}
do
        (( $i > max || max == 0 ))&& max=$i
done
echo "The winning combinatioon :"
echo "$max : ${Dict1[$max]} %"
;;
3)
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
HHH=`expr $HHH \* 100 / 50 `
echo "HHH : $HHH % "
HHT=`expr $HHT \* 100 / 50`
echo "HHT : $HHT %" 
HTH=`expr $HTH \* 100 / 50 `
echo "HTH : $HTH % "
THH=`expr $THH \* 100 / 50`
echo "THH : $THH %"
TTH=`expr $TTH \* 100 / 50`
echo "TTH : $TTH %"
THT=`expr $THT \* 100 / 50`
echo "THT : $THT %"
HTT=`expr $HTT \* 100 / 50`
echo "HTT : $HTT %"
TTT=`expr $TTT \* 100 / 50`
echo "TTT : $TTT %"
#echo ${Dict[@]}
declare -A Dict1
Dict1=([HHH]=$HHH [HHT]=$HHT [HTH]=$HTH [THH]=$THH [TTH]=$TTH [THT]=$THT [HTT]=$HTT [TTT]=$TTT)
max=0
for i in ${!Dict1[@]}
do
	(( $i > max || max == 0 ))&& max=$i
done
echo "The winning combinatioon :"
echo "$max : ${Dict1[$max]} %"
;;
*)
exit 1
;;
esac

