from selenium import webdriver
import pandas as pd

browser = webdriver.Chrome()
browser.get('https://www.investidorpetrobras.com.br/acoes-dividendos-e-divida/dividendos-e-jcp/')

tabela = browser.find_element_by_css_selector('.tabs-body > div:nth-child(2) > table')

tabela = tabela.get_attribute('outerHTML')
browser.close()

pdtable = pd.read_html(tabela)[0]

pdtable.to_csv('petrobras.csv')
