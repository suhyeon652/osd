
subjects=("국어" "수학")

declare -A scores  
sum=0
count=0

echo "과목 점수 입력"

for sub in "${subjects[@]}"
do
    read -p "$sub 점수 입력: " s
    scores[$sub]=$s

    if [ $s -ge 90 ]; then
        echo "$sub ($s점) → A"
    else
        echo "$sub ($s점) → B"
    fi

    sum=$((sum + s))
    count=$((count + 1))
done

avg=$((sum / count))

echo "========================"
echo "평균 점수: $avg"

if [ $avg -ge 90 ]; then
    echo "평균 등급: A"
else
    echo "평균 등급: B"
fi
echo "========================"

