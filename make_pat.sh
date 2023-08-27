echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "make sure the latest version of Patimokkha ods in Downloads"

exec > >(tee "/home/deva/logs/mkpat.log") 2>&1

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "moving Patimokkha ods from Downloads"

mv "/home/deva/Downloads/Pātimokkha Word by Word.ods" "/home/deva/Documents/dps/patimokkha_dict/original_sources/Pātimokkha Word by Word.ods"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "making Patimokkha csv with bold for Anki- ods-to-anki.py"


poetry run python ods-to-anki.py

echo "process completed"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

mv "/home/deva/Documents/dps/patimokkha_dict/Pātimokkha Word by Word.csv" "/home/deva/Documents/dpd-db/dps/csvs/anki_csvs/anki-patimokkha.csv"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e "\033[34manki-patimokkha.csv moved to csv-for-anki\033[0m"


poetry run python patimokkha_dict.py
echo "HTML updated please push on github"
