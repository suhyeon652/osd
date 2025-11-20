
DB=DB.txt
touch $DB

while true
do
    echo "1) 팀원 정보 추가"
    echo "2) 한 일 기록"
    echo "3) 이름 검색"
    echo "4) 날짜 검색"
    echo "5) 종료"
    read -p "> 선택: " s

    case $s in
        1)
            read -p "이름: " name
            read -p "전화/생일: " info
            echo "이름:$name 정보:$info" >> $DB
            ;;
        2)
            read -p "날짜: " date
            read -p "내용: " content
            echo "날짜:$date 내용:$content" >> $DB
            ;;
        3)
            read -p "검색할 이름: " name
            grep "이름:$name" $DB
            ;;
        4)
            read -p "검색할 날짜: " date
            grep "날짜:$date" $DB
            ;;
        5)
            break
            ;;
    esac
done
