import requests
from bs4 import BeautifulSoup
import json
import pandas as pd
url = "https://www.ptt.cc/bbs/movie/index.html"
#模仿使用者請求Headers
headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36'}
response = requests.get(url, headers=headers)
soup = BeautifulSoup(response.text, "html.parser") #parser 解析器

#文章標題
articles = soup.find_all("div", class_="r-ent") #列表
data_list = []
for a in articles:
    data = {}
    #標題
    title = a.find("div", class_="title")
    if title and title.a:     #避免沒有標題而顯示錯誤
        title = title.a.text
    else:
        title = "沒有標題"
    data["標題"] = title
    #人氣
    popular = a.find("div", class_="nrec")
    if popular and popular.span:
        popular = popular.span.text
    else:
        popular = "N/A"
    data["人氣"] = popular
    #日期
    date = a.find("div", class_="date")
    if date:
        date = date.text
    else:
        date = "N/A"
    data["日期"] = date
    data_list.append(data) #加data物件
df = pd.DataFrame(data_list)
df.to_excel("ptt.movie.xlsx", index=False, engine="openpyxl")