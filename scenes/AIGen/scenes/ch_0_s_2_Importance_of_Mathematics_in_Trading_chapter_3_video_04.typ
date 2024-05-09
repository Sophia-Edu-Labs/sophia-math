#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the importance of ratios and percentages in trading.")
]

#text(size: 30pt, weight: "bold")[Ratios & Percentages in Trading 📊]

#v(40pt)

#only("2-")[
- Assess company performance 🏭
]

#only("3-")[
- Compare stocks 📈
]

#only("4-")[
- Guide investment decisions 💰
]

#only("2")[
#voiceover("Ratios and percentages are vital tools for assessing a company's financial performance. They provide insights into profitability, liquidity, and efficiency.")
]

#only("3")[
#voiceover("They also allow traders to compare different stocks and evaluate their relative strengths and weaknesses. This helps in identifying promising investment opportunities.")
]

#only("4")[
#voiceover("Ultimately, ratios and percentages guide investment decisions by providing quantitative measures to support trading strategies.")
]

#v(40pt)

#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

labels = ['Stock A', 'Stock B', 'Stock C']
p_e_ratios = [15, 20, 25]

fig, ax = plt.subplots()

ax.bar(labels, p_e_ratios, color='skyblue')
ax.set_ylabel('P/E Ratio')
ax.set_title('P/E Ratios of Stocks')

for i, v in enumerate(p_e_ratios):
    ax.text(i, v + 0.5, str(v), ha='center')

plt.show()
```,
width: 360pt),
caption: [Comparing P/E ratios of stocks],
)
]
]
]

#only("5")[
#voiceover("For example, the price-to-earnings or P/E ratio is commonly used to evaluate the valuation of a company's stock price relative to its earnings. A higher P/E ratio generally indicates that investors are expecting higher growth in the future.")
]

#v(40pt)

#only("6")[
#voiceover("In summary, ratios and percentages are essential mathematical tools in trading that help assess company performance, compare stocks, and inform investment decisions.")
]
]