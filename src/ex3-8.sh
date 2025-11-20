
if [ ! -d DB ]; then
    mkdir DB
fi

cd DB
touch f1.txt f2.txt f3.txt f4.txt f5.txt

tar -czf db.tar.gz f*.txt
cd ..

mkdir -p train

for f in DB/f*.txt
do
    ln -sf ../$f train/
done

echo "완료!"
