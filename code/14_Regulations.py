#!/usr/bin/env Python
import pandas as pd

df = pd.read_csv('Deseq_table.csv')
df_Prokka = pd.read_csv('PROKKA_04052022.tsv', sep='\t')

max_log = df.nlargest(n=10, columns=['log2FoldChange'], keep='all')
min_log = df.nsmallest(n=10, columns=['log2FoldChange'], keep='all')

# print(df_Prokka['locus_tag'])

max_log_ID = max_log['Unnamed: 0']
min_log_ID = min_log['Unnamed: 0']

# print(max_log_ID.values.tolist())

df_result_max = df_Prokka[df_Prokka['locus_tag'].isin(max_log_ID.values.tolist())][['locus_tag', 'gene', 'product']]
df_result_min = df_Prokka[df_Prokka['locus_tag'].isin(min_log_ID.values.tolist())][['locus_tag', 'gene', 'product']]

# print(df_result_max)
# print(df_result_min)

Regulation = []
for i in range(10):
	Regulation.append('Upregulated')
df_result_max.insert(0, 'Regulation', Regulation)

Regulation =[]
for i in range(10):
	Regulation.append('Downregulated')
df_result_min.insert(0, 'Regulation', Regulation)

#print(df_result_max)
#print(df_result_min)

df_result = pd.concat([df_result_max, df_result_min], axis=0)
df_log = pd.concat([max_log, min_log], axis=0)[['Unnamed: 0', 'log2FoldChange']]
df_log.columns = ['locus_tag', 'log2FoldChange']

result = df_result.merge(df_log, on='locus_tag', how='outer')
result.to_csv('Regulations.csv', index=False)
