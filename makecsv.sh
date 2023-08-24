echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "moving Patimokkha ods from Downloads"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

mv "/home/deva/Downloads/Pātimokkha Word by Word.ods" "/home/deva/Documents/dps/patimokkha_dict/original_sources/Pātimokkha Word by Word.ods"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "making Patimokkha csv with bold for Anki- ods-to-anki.py"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

# echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# echo "making Patimokkha csv with bold - ods-to-csv-headers.py"
# echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

# poetry run python ods-to-csv-headers.py "original_sources/Pātimokkha Word by Word.ods" Sheet1 20

# echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# echo "filtering words that have been done"
# echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

# poetry run python "patimokkha filter.py"

poetry run python ods-to-anki.py

echo "process completed"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

mv "/home/deva/Documents/dps/patimokkha_dict/Pātimokkha Word by Word.csv" "/home/deva/Documents/dpd-db/dps/csvs/anki_csvs/anki-patimokkha.csv"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e "\033[34manki-patimokkha.csv moved to csv-for-anki\033[0m"
