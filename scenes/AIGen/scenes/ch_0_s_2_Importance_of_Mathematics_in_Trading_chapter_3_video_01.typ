#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Ratios and Percentages in Trading]
#v(40pt)
#only("1-")[- Used to compare stock performances 📊]
#v(20pt)
#only("2-")[- Help make informed investment decisions 💡]
#only("1")[
#voiceover("Ratios and percentages are essential tools in trading. They are used to compare the performances of different stocks.")
]
#only("2")[
#voiceover("By analyzing these ratios and percentages, traders can make informed decisions about which stocks to invest in.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Ratios]
#v(40pt)
#only("1-")[- Price-to-Earnings (P/E) Ratio: $P/E = ("Market Value per Share" 💰)/("Earnings per Share" 📈)$]
#v(20pt)
#only("2-")[- Debt-to-Equity (D/E) Ratio: $D/E = ("Total Liabilities" 💸)/("Shareholders' Equity" 👥)$]
#only("1")[
#voiceover("One key ratio is the Price-to-Earnings or P/E ratio. It's calculated by dividing the market value per share by the earnings per share. A lower P/E ratio may indicate that a stock is undervalued.")
]
#only("2")[
#voiceover("Another important ratio is the Debt-to-Equity or D/E ratio. It's calculated by dividing a company's total liabilities by its shareholders' equity. A high D/E ratio may indicate that a company has a lot of debt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Percentage Changes]
#v(40pt)
#only("1-")[- Used to track stock price movements 📉📈]
#v(20pt)
#only("2-")[- Percentage Change = $(("New Price" 🆕) - ("Old Price" 🔙))/("Old Price" 🔙) dot 100%$]
#only("1")[
#voiceover("Percentages are used to track stock price movements over time.")
]
#only("2")[
#voiceover("The percentage change is calculated by subtracting the old price from the new price, dividing the result by the old price, and then multiplying by 100 percent.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Percentages]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

labels = ['Stock A', 'Stock B', 'Stock C', 'Stock D', 'Stock E'] 
sizes = [15, 30, 45, 10, 25]

fig1, ax1 = plt.subplots()
ax1.pie(sizes, labels=labels, autopct='%1.1f%%', startangle=90)
ax1.axis('equal')
plt.title("Portfolio Composition")

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Percentages are often used to visualize the composition of an investment portfolio. In this pie chart, we can see the percentage breakdown of different stocks in a hypothetical portfolio.")
]
]]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Ratios and percentages are crucial in trading 🔑]
#v(20pt)
#only("2-")[- They help compare stock performances 📊]
#v(20pt)
#only("3-")[- And guide investment decisions 💸]
#only("1")[
#voiceover("In summary, ratios and percentages are crucial tools in trading.")
]
#only("2")[
#voiceover("They help traders compare the performances of different stocks...")
]
#only("3")[
#voiceover("...and guide their investment decisions.")
]
]