#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Diversification 🌿]
#v(40pt)
#only("1-")[- Risk management strategy 🛡️]
#v(20pt)
#only("2-")[- Mixes a variety of investments 🍲]
#only("1")[
#voiceover("Diversification is a risk management strategy used in investing.")
]
#only("2")[
#voiceover("It involves mixing a wide variety of investments within a portfolio.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Diversify? 🤔]
#v(40pt)
#only("1-")[- Reduces overall risk 📉]
#v(20pt)
#only("2-")[- Limits exposure to any single asset 🎯]
#only("1")[
#voiceover("The main reason to diversify is to reduce the overall risk of the portfolio.")
]
#only("2")[
#voiceover("By investing in a variety of assets, you limit your exposure to any single investment.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

labels = ['Stocks', 'Bonds', 'Real Estate', 'Commodities']
sizes = [40, 30, 20, 10]

fig, ax = plt.subplots()
ax.pie(sizes, labels=labels, autopct='%1.1f%%', startangle=90)
ax.axis('equal')  
plt.title('Diversified Portfolio')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation of a diversified portfolio. It includes stocks, bonds, real estate, and commodities, each making up a different percentage of the total portfolio.")
]
]]

#slide()[
#text(size: 30pt, weight: "bold")[Example 🧩]
#v(40pt)
#only("1-")[- Invest in different sectors and asset classes]
#v(20pt)
#only("2-")[- Stocks 📈, Bonds 📜, Real Estate 🏠, Commodities 🌾]
#only("1")[
#voiceover("For example, instead of investing all your money in tech stocks, you might diversify by investing in different sectors and asset classes.")
]
#only("2")[
#voiceover("This could include stocks from various sectors, bonds, real estate, and commodities like gold or oil.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Diversification: risk management strategy 🛡️]
#v(20pt)
#only("2-")[- Mixes a variety of investments 🍲]
#v(20pt)
#only("3-")[- Reduces overall portfolio risk 📉]
#only("1")[
#voiceover("In summary, diversification is a risk management strategy...")
]
#only("2")[
#voiceover("...that mixes a variety of investments within a portfolio...")
]
#only("3")[
#voiceover("...to reduce the overall risk of the portfolio.")
]
]