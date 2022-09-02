make
if [ ! -e text8 ]; then
  wget http://mattmahoney.net/dc/text8.zip -O text8.gz
  gzip -d text8.gz -f
fi
time ./word2vec -train text8 -output vectors.bin -cbow 0 -size 100 -window 5 -negative 5 -hs 1 -sample 1e-4 -threads 1 -binary 1 -iter 1
./distance vectors.bin
