echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# echo "make sure the latest version of Patimokkha ods in Downloads"

bash download_patimokkha.sh

exec > >(tee "~/logs/mkpat.log") 2>&1

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "moving Patimokkha ods from Downloads"

# mv "~/Downloads/Pātimokkha Word by Word.ods" "~/Documents/dps/patimokkha_dict/original_sources/Pātimokkha Word by Word.ods"

mv "~/Downloads/Pātimokkha Word by Word.xlsx" "~/Documents/dps/patimokkha_dict/original_sources/Pātimokkha Word by Word.xlsx"

cd original_sources

libreoffice --headless --convert-to ods Pātimokkha\ Word\ by\ Word.xlsx

cd ..

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "making Patimokkha csv with bold for Anki- ods-to-anki.py"


uv run python ods-to-anki.py

echo "process completed"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

mv "~/Documents/dps/patimokkha_dict/Pātimokkha Word by Word.csv" "~/Documents/dpd-db/dps/csvs/anki_csvs/anki_patimokkha.csv"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e "\033[34manki_patimokkha.csv moved to csv-for-anki\033[0m"

uv run python patimokkha_dict.py
echo "HTML updated please push on github"

cd "~/Documents/dps/patimokkha_dict"

bash push_changes.sh

