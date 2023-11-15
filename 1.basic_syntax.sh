# ����ڰ� ���� ��ġ�� �ִ� ���� ��� ���
pwd

# ���� ��ġ���� ����, ���� ���
ls

# + �ڼ���
ls -l

# + �������ϱ���
ls -al

# ���丮 ����
mkdir saehan_dir

# Ư�� ���丮 �̵�
cd saehan_dir

# Ȩ ���丮 �̵�
cd

# root ���丮
cd /

# ���� ���丮 �̵�
cd ��Ʈ���� ���ϰ��

# ���� ���� �̵�
cd ..

# �� ���� �����
touch first_file.txt

# ���� ���� ��ȸ
cat first_file.txt

# �͹̳�â�� ���� ���
echo "hello world"

# echo�� ���� ���Ͽ� write�ϴ� ���(����� / ���� ����)
echo "hello world" > first_file.txt

# echo >> ��� ���� ���� �����߰�
echo "hello world" >> first_file.txt

# ������ �б� ���ؼ��� <�� ���
# sort ��ɾ�� �Բ� ���� ���
sort < ���ϸ�

# history��ɾ ���� ������ �����ߴ� ��ɾ� ��ȸ
history

# clear
clear

# ���ϻ���
rm

# ���丮 ����
rm -r

# ��������
rm -rf

# ���Ϻ���
cp ������ ��������ϸ�

# ���� ����
cp -r ���������� �����������(�������)

# ���� / ���� �̵�(-r �ɼ� �ʿ� ����)
# ���ϸ� ���浵 ����
mv �̵���� �̵��ȴ���(�������)

# head�� cató�� ������ ���(���� n�� ��ȸ)
# tail�� ���� n�� ��ȸ
head -n ���ϸ�
tail -n ���ϸ�

# cd -
���� ������ ���ư���

# �� ���(if)
if[condition]; then
    echo "hello world"
elif[condition]; then
    echo "~~~~~"
else
    echo "~~"
fi

# for �ݺ���
for i in {1..100}; do
    echo "Hello World$i"
done

# grep
grep [�ɼ�][����][���ϸ�/���丮]
-r �ɼ�: ���丮 �� ��� ���Ͽ��� �˻� (recursive)
-i �ɼ�: ��ҹ��� ���� ���� �˻� (ignore-case)
-n �ɼ�: ���μ� ��� (line-number)
e.g. grep -rin "hello" mydir
    hello ���ڿ��� ���μ��� �Բ� mydir�������� ��ҹ��� ���� ���� �˻�

# grep + find
find [���][�ɼ�][�ൿ]
-name �ɼ�: ���ϸ����� �˻�
-type �ɼ�: Ÿ������ �˻�(f�� ����, d�� ���丮)
-exec, {}, \
    exec: find�� ã�� ����� ���� ���� ���.
    {}: find�� ã�� ����� ���� ������ �ǹ�
    \: exec�� ��������
e.g.
    find = ������ ã�� ���
    find ./ -name "*.txt"
    find ./ -name "*.txt" \ xargs grep -rni "hello"
    find ./ -name "*.txt" -exec cp -r {} ./testFolder/\;
    find ./ -name "*.txt" -exec grep -rni "hello" {} \; -exec cp -r {} testFolder \;