# 1 
echo "Start"

cd
if [ -d "mydir2" ]; then
    echo "Already Exist"
    cd mydir
else
    mkdir mydir2

cd mydir2

touch hello world.txt

for i in {1..100}; do
    echo "hello world$i" >> hello world.txt

echo "Done"

# 2
echo "practice3 start"

cd

mkdir mydir3
cd mydir3

for i in {1..100}; do
    touch "file$i.txt"
    
    for j in {1..100}; do
        echo "hello world from file$i" >> "file$i.txt"
    done
done

echo "practice complete"
