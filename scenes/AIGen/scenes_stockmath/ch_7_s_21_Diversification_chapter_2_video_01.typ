#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Diversification Steps 🌈]
#v(40pt)
#only("1-")[1. Invest in different asset classes 💰]
#v(20pt)
#only("2-")[   - Stocks 📈, bonds 📜, real estate 🏠, commodities 🌾]
#v(40pt)
#only("3-")[2. Spread investments across industries 🏭]
#v(20pt)
#only("4-")[   - Technology 💻, healthcare 🩺, energy ⚡, finance 🏦]
#v(40pt)
#only("5-")[3. Diversify geographically 🌍]
#v(20pt)
#only("6-")[   - Domestic 🏡 and international markets 🌎]
#only("1")[
#voiceover("The first step to achieve diversification is to invest in different asset classes.")
]
#only("2")[
#voiceover("This includes stocks, bonds, real estate, and commodities.")
]
#only("3")[
#voiceover("Next, spread your investments across various industries.")
]
#only("4")[
#voiceover("For example, invest in technology, healthcare, energy, and finance sectors.")
]
#only("5")[
#voiceover("Finally, diversify geographically.")
]
#only("6")[
#voiceover("This means investing in both domestic and international markets.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Diversification 📊]
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
colors = ['#ff9999', '#66b3ff', '#99ff99', '#ffcc99']

plt.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
plt.axis('equal')
plt.title('Asset Allocation')
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Here's a visual representation of a diversified portfolio. The pie chart shows the allocation across different asset classes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Benefits of Diversification 🌟]
#v(40pt)
#only("1-")[- Reduces overall portfolio risk 🔻]
#v(20pt)
#only("2-")[- Mitigates impact of market volatility 📉]
#v(20pt)
#only("3-")[- Potential for more stable returns 📈]
#only("1")[
#voiceover("Diversification reduces overall portfolio risk.")
]
#only("2")[
#voiceover("It helps mitigate the impact of market volatility.")
]
#only("3")[
#voiceover("And it offers the potential for more stable returns over time.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[1. Invest across asset classes, industries, and regions 🌐]
#v(20pt)
#only("2-")[2. Diversification reduces risk and volatility 📉]
#v(20pt)
#only("3-")[3. Aim for a well-balanced, diversified portfolio 🎯]
#only("1")[
#voiceover("To recap, the key steps to diversify are investing across asset classes, industries, and geographical regions.")
]
#only("2")[
#voiceover("Remember, diversification helps reduce risk and volatility in your portfolio.")
]
#only("3")[
#voiceover("Always aim for a well-balanced, diversified portfolio to achieve your financial goals.")
]
]