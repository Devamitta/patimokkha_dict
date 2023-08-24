import pandas as pd

df = pd.read_csv("original_sources/Pātimokkha Word by Word.csv", sep="\t", dtype= str)
df.fillna("", inplace=True)

# filter all covered words
test1 = df['meaning'] != ""
test2 = df['sentence'] != ""
test3 = df['#'] == "1"
filter = test2 & test1 & test3
df = df.loc[filter]

# change tamil
test1 = df['meaning'] != ""
filter = test1
df.loc[filter, ['native']] = ""

# choosing order of columns
df = df[['pali_1', 'pos', 'grammar', 'case', 'native', 
        'meaning', 'meaning_lit', 'root', 'root_gp', 'root_sign', 'base', 
        'construction', 'compound_type', 'compound_construction', 'abbrev', 
        'source', 'sentence', 'commentary', 'test']]
df.insert(17, 'feedback', "<a href=\"https://docs.google.com/forms/d/e/1FAIpQLSdG6zKDtlwibtrX-cbKVn4WmIs8miH4VnuJvb7f94plCDKJyA/viewform?usp=pp_url&entry.438735500="+df['bhikkhupātimokkhapāḷi']+"\">feedback</a>")    

# save csv
df.to_csv("curated_sources/Pātimokkha Word by Word.csv", sep="\t", index=None)