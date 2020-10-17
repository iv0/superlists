from selenium import webdriver


browser = webdriver.Firefox()
browser.get('http://0.0.0.0:8000')

assert 'Django' in browser.title
