# 사용자가 현재 위치해 있는 폴더 경로 출력
pwd

# 현재 위치에서 파일, 폴더 목록
ls

# + 자세히
ls -l

# + 숨김파일까지
ls -al

# 디렉토리 생성
mkdir saehan_dir

# 특정 디렉토리 이동
cd saehan_dir

# 홈 디렉토리 이동
cd

# root 디렉토리
cd /

# 기존 디렉토리 이동
cd 루트부터 파일경로

# 상위 폴더 이동
cd ..

# 빈 파일 만들기
touch first_file.txt

# 파일 내용 조회
cat first_file.txt

# 터미널창에 문자 출력
echo "hello world"

# echo를 통해 파일에 write하는 방법(덮어쓰기 / 원본 삭제)
echo "hello world" > first_file.txt

# echo >> 대상 파일 끝에 내용추가
echo "hello world" >> first_file.txt

# 파일을 읽기 위해서는 <를 사용
# sort 명령어와 함께 많이 사용
sort < 파일명

# history명령어를 통해 이전에 실행했던 명령어 조회
history

# clear
clear

# 파일삭제
rm

# 디렉토리 삭제
rm -r

# 강제삭제
rm -rf

# 파일복사
cp 복사대상 복사된파일명

# 폴더 복사
cp -r 복사대상폴더 복사된폴더명(경로포함)

# 파일 / 폴더 이동(-r 옵션 필요 없음)
# 파일명 변경도 가능
mv 이동대상 이동된대상명(경로포함)

# head는 cat처럼 파일을 출력(상위 n개 조회)
# tail은 하위 n행 조회
head -n 파일명
tail -n 파일명

# cd -
이전 폴더로 돌아가기

# 쉘 제어문(if)
if[condition]; then
    echo "hello world"
elif[condition]; then
    echo "~~~~~"
else
    echo "~~"
fi

# for 반복문
for i in {1..100}; do
    echo "Hello World$i"
done

# grep
grep [옵션][패턴][파일명/디렉토리]
-r 옵션: 디렉토리 내 모든 파일에서 검색 (recursive)
-i 옵션: 대소문자 구분 없이 검색 (ignore-case)
-n 옵션: 라인수 출력 (line-number)
e.g. grep -rin "hello" mydir
    hello 문자열을 라인수와 함께 mydir폴더에서 대소문자 구분 없이 검색

# grep + find
find [경로][옵션][행동]
-name 옵션: 파일명으로 검색
-type 옵션: 타입으로 검색(f는 파일, d는 디렉토리)
-exec, {}, \
    exec: find로 찾은 결과에 대해 실행 명령.
    {}: find로 찾은 대상이 담기는 공간을 의미
    \: exec의 종료지점
e.g.
    find = 파일을 찾는 명령
    find ./ -name "*.txt"
    find ./ -name "*.txt" \ xargs grep -rni "hello"
    find ./ -name "*.txt" -exec cp -r {} ./testFolder/\;
    find ./ -name "*.txt" -exec grep -rni "hello" {} \; -exec cp -r {} testFolder \;