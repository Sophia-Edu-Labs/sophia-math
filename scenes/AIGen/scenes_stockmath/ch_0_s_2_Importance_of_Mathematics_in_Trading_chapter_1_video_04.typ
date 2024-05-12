#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Trading Recap 📈]
#v(40pt)
#only("1-")[
- Stocks are traded on stock exchanges 🏛️
]
#only("2-")[
- NYSE and NASDAQ are well-known exchanges 🌎
]
#only("1")[
#voiceover("Let's recap what we've learned about stock trading. Stocks are bought and sold on specialized platforms called stock exchanges.")
]
#only("2")[
#voiceover("Two of the most famous stock exchanges in the world are the New York Stock Exchange, or NYSE, and the NASDAQ.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stock Exchanges 🏛️]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

exchanges = ['NYSE', 'NASDAQ', 'Others']
sizes = [40, 30, 30]
colors = ['#1f77b4', '#ff7f0e', '#2ca02c']

plt.figure(figsize=(6, 6))
plt.pie(sizes, labels=exchanges, colors=colors, autopct='%1.1f%%', startangle=90)
plt.axis('equal')
plt.title('Major Stock Exchanges')

plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("This pie chart shows the relative size of the NYSE and NASDAQ compared to other stock exchanges. Together, they account for a significant portion of global stock trading.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Stock Exchanges Matter 🤔]
#v(40pt)
#only("1-")[
- Provide a regulated market for stock trading 📋
]
#only("2-")[
- Ensure fair and transparent pricing 💰
]
#only("3-")[
- Facilitate liquidity for investors 💧
]
#only("1")[
#voiceover("Stock exchanges play a crucial role in the financial system. They provide a regulated market where buyers and sellers can trade stocks.")
]
#only("2")[
#voiceover("Exchanges also ensure that the prices of stocks are determined fairly and transparently, based on supply and demand.")
]
#only("3")[
#voiceover("Moreover, by bringing together many buyers and sellers, exchanges facilitate liquidity, making it easier for investors to buy or sell stocks when they want to.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[
- Stock trading occurs on stock exchanges
]
#only("2-")[
- NYSE and NASDAQ are major global exchanges
]
#only("3-")[
- Exchanges provide regulation, fair pricing, and liquidity
]
#only("1")[
#voiceover("To sum up, stock trading takes place on specialized platforms called stock exchanges.")
]
#only("2")[
#voiceover("The New York Stock Exchange and NASDAQ are two of the largest and most well-known exchanges in the world.")
]
#only("3")[
#voiceover("These exchanges serve important functions, including providing a regulated market, ensuring fair and transparent stock prices, and facilitating liquidity for investors.")
]
]