# �͹̳�â�� "script practice1 start"���
echo "script practice1 start"

# Ȩ ���丮���� mydir�̶�� ���� ����(���뼺�� ���� cd(Ȩ ��) ����)
cd
mkdir mydir

# mydir�� �̵��ؼ� file1.txt, file2.txt ���� ����
cd mydir
touch file1.txt
touch file2.txt

# file1.txt���� Hello from file1 �̶�� ���� �Է�
echo "Hello from file1" > file1.txt

# file2.txt���� Hello from file2 �̶�� ���� �Է�
echo "Hello from file2" > file2.txt

# file1.txt ������ ��¿�� �𸣴�, copy���� �ϳ� ����(file1_backup.txt)
cp file1.txt file1_backup.txt

# file2.txt ������ �̸��� file2_rename.txt�� ����
mv file2.txt file2_rename.txt

# �͹̳�â�� "script practice1 complete" ���
echo "script practice1 complete"