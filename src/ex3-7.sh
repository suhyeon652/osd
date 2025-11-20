while true
do
    echo "1) 사용자 정보"
    echo "2) CPU 사용률(top)"
    echo "3) 메모리 사용량(free)"
    echo "4) 디스크 사용량(df)"
    read -p "> 선택: " s

    case $s in
        1) who ;;
        2) top -n 1 ;;
        3) free -h ;;
        4) df -h ;;
    esac
done
