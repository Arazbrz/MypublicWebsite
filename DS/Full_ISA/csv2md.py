import os
import pandas as pd

#build CSV into markdown tables
md = ''
directory = './CSV/'
file_list = os.listdir(directory)
file_list.sort()
for csv_file in file_list:
    #add headings to markdown tables
    md += f'\n\n# {csv_file[3:-4]}\n'
    df = pd.read_csv(directory+csv_file)
    df.rename( columns={'Unnamed: 2':'Misc.'}, inplace=True )
    df = df.to_markdown(showindex=True).replace('nan','')
    md += df

#grab prologue file
prologue = open('prologue.md', 'r')
md = prologue.read() + md

#write file
f = open("ISA.md", "w")
f.write(md)
f.close()