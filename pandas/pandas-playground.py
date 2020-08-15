import pandas as pd

pdtable = pd.read_csv('petrobras.csv')

produto1 = 'ON – PETR3'
produto2 = 'PN – PETR4'

idxProduto1 = pdtable.query("Parcela == '"+produto1+"'").index[0]
idxProduto2 = pdtable.query("Parcela == '"+produto2+"'").index[0]

# print(idxProduto1)
# print(idxProduto2)

pdtable1 = pdtable.iloc[:idxProduto2].reset_index()
pdtable2 = pdtable.iloc[idxProduto2:].reset_index()

print(pdtable1)
print(pdtable2)

