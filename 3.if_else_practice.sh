# ���ȣ �� �� ����
# if [����]; then
#     echo "file exist"
# else
#     echo "file does not exist"
# fi

mkdir mydir
cd mydir
touch first.txt second.txt

file_name = "first.txt"

if [-e $file_name ]; then 
    echo "$file_name exist"
else
    echo "$file_name does not exist"
fi