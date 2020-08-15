Webdriver
  - chrome webdriver
  - gecko driver
Selenium
Selenium Grid

HTML / XML
Seletores
  - css
  - xpath

python
  robot framework

## instalação

instalar python
instalar pip

no terminal, use o pip para instalar as dependências
```
pip install --upgrade \
robotframework \
robotframework-seleniumlibrary \
webdrivermanager
```

Talvez precise rodar o comando com `sudo`

```
webdrivermanager firefox chrome --linkpath /usr/local/bin
```

## rodar os testes

```
robot <nome-do-arquivo.robot>
```
