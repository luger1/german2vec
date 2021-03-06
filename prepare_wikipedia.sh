#install wikiextractor for processing wikipedia files
git clone https://github.com/attardi/wikiextractor.git
cd wikiextractor
python setup.py install

# download latest wikipedia data
curl -O https://dumps.wikimedia.org/dewiki/latest/dewiki-latest-pages-articles.xml.bz2
bzip2 -dk dewiki-latest-pages-articles.xml.bz2

python3 WikiExtractor.py dewiki-latest-pages-articles.xml -o extract -b 10M --ignored_tags abbr,b,big --discard_elements gallery,timeline,noinclude

