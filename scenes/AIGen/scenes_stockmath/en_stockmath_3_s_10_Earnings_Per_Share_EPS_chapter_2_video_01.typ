#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[EPS and Investing 📈]
#v(40pt)
#only("1-")[- EPS = Earnings Per Share]
#v(20pt)
#only("2-")[- Key metric for investors 🔍]
#v(20pt)
#only("3-")[- Higher EPS → Stronger company 💪]
#only("1")[
#voiceover("Earnings Per Share, or EPS, is a crucial financial metric that investors use to evaluate a company's performance and profitability.")
]
#only("2")[
#voiceover("EPS is one of the key metrics that investors look at when deciding whether to invest in a company's stock.")
]
#only("3")[
#voiceover("Generally, a higher EPS indicates that a company is more profitable and financially strong.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[EPS Comparison 🔎]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

companies = ['Company A', 'Company B', 'Company C']
eps = [4.5, 2.1, 6.8]

plt.figure(figsize=(6, 4))
plt.bar(companies, eps, color=['skyblue', 'lightgreen', 'coral'])
plt.ylabel('EPS ($)')
plt.title('EPS Comparison')
plt.grid(axis='y', linestyle='--', alpha=0.7)
for i, v in enumerate(eps):
    plt.text(i, v + 0.1, str(v), color='black', fontweight='bold', ha='center')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Investors often compare the EPS of different companies within the same industry to gauge which company might be a better investment opportunity.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[EPS Growth 📈]
#v(40pt)
#only("1-")[- Investors track EPS growth over time 📅]
#v(20pt)
#only("2-")[- Consistent EPS growth → Attractive investment 👍]
#v(20pt)
#only("3-")[- Declining EPS → Potential red flag 🚩]
#only("1")[
#voiceover("Investors also track a company's EPS growth over time.")
]
#only("2")[
#voiceover("Consistent growth in EPS year over year is a positive sign and can make a company an attractive investment.")
]
#only("3")[
#voiceover("On the other hand, declining EPS over time can be a red flag, suggesting that the company's financial health may be deteriorating.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[EPS and Stock Price 💸]
#v(40pt)
#only("1-")[- EPS directly impacts stock price 📊]
#v(20pt)
#only("2-")[- Higher EPS → Higher demand for stock → Stock price ⬆]
#v(20pt)
#only("3-")[- Lower EPS → Lower demand for stock → Stock price ⬇]
#only("1")[
#voiceover("EPS has a direct impact on a company's stock price.")
]
#only("2")[
#voiceover("A higher EPS often leads to increased demand for the company's stock, which can drive the stock price up.")
]
#only("3")[
#voiceover("Conversely, a lower EPS can lead to decreased demand and a falling stock price.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- EPS is a key metric for investors 🔑]
#v(20pt)
#only("2-")[- Higher and growing EPS → Stronger company 📈]
#v(20pt)
#only("3-")[- EPS directly impacts stock price and investment decisions 💸]
#only("1")[
#voiceover("In summary, Earnings Per Share is a key metric that investors use to evaluate a company's financial strength and profitability.")
]
#only("2")[
#voiceover("A higher and consistently growing EPS generally indicates a stronger company and a more attractive investment opportunity.")
]
#only("3")[
#voiceover("Because EPS directly impacts a company's stock price, it plays a crucial role in investors' decision-making process.")
]
]