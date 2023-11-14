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