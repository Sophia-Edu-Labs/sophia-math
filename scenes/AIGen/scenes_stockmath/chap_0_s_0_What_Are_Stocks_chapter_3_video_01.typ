#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Types of Stocks]
#v(40pt)
#only("1-")[- Common Stocks 📈]
#v(20pt)
#only("2-")[- Preferred Stocks 🏆]
#only("1")[
#voiceover("There are two main types of stocks: common stocks and preferred stocks.")
]
#only("2")[
#voiceover("Let's explore the differences between these two types.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Common Stocks]
#v(40pt)
#only("1-")[- Voting rights ✅]
#v(20pt)
#only("2-")[- Dividends after preferred shareholders 🥈]
#only("1")[
#voiceover("Common stockholders have voting rights, which means they can participate in the decision-making process of the company.")
]
#only("2")[
#voiceover("However, when it comes to receiving dividends, common stockholders are second in line after preferred shareholders.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Preferred Stocks]
#v(40pt)
#only("1-")[- No voting rights ❌]
#v(20pt)
#only("2-")[- Priority over dividends 🥇]
#only("1")[
#voiceover("On the other hand, preferred stocks typically don't come with voting rights.")
]
#only("2")[
#voiceover("But they do have priority over dividends. This means that preferred shareholders receive their dividends before common stockholders.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dividend Priority]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

labels = ['Preferred Stocks', 'Common Stocks']
sizes = [60, 40]
colors = ['#ff9999', '#66b3ff']
explode = (0.1, 0)

plt.pie(sizes, explode=explode, labels=labels, colors=colors,
autopct='%1.1f%%', shadow=True, startangle=90)

plt.axis('equal')
plt.title('Dividend Priority')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This pie chart illustrates the dividend priority. Preferred stocks, shown in red, have a larger slice, indicating their higher priority in receiving dividends compared to common stocks, shown in blue.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Common Stocks: Voting rights ✅, Dividends after preferred 🥈]
#v(20pt)
#only("2-")[- Preferred Stocks: No voting rights ❌, Priority over dividends 🥇]
#only("1")[
#voiceover("To sum up, common stocks offer voting rights but receive dividends after preferred shareholders.")
]
#only("2")[
#voiceover("Preferred stocks, on the other hand, don't have voting rights but have priority when it comes to receiving dividends.")
]
]