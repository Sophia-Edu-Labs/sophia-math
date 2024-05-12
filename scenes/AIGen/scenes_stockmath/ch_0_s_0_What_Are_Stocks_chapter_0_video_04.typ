#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Stocks 📈]
#v(40pt)
#only("1-")[- Stocks represent ownership in a company 🏢]
#v(20pt)
#only("2-")[- Stockholders have a claim on company's assets and earnings 💰]
#only("1")[
#voiceover("Let's recap what we've learned about stocks. Stocks represent shares of ownership in a company.")
]
#only("2")[
#voiceover("By holding stocks, you have a claim on the company's assets and earnings.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stock Ownership 🤝]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

labels = 'Stockholder A', 'Stockholder B', 'Stockholder C', 'Other Stockholders'
sizes = [15, 30, 20, 35]
colors = ['gold', 'yellowgreen', 'lightcoral', 'lightskyblue']

plt.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=140)

plt.axis('equal')
plt.title("Company Ownership")
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("This pie chart shows an example of how a company's ownership might be divided among stockholders. Each stockholder owns a percentage of the company based on the number of stocks they hold.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Assets and Earnings 📊]
#v(40pt)
#only("1-")[- Assets: Company's property, cash, inventory, etc. 🏠💵]
#v(20pt)
#only("2-")[- Earnings: Company's profits 💸]
#v(20pt)
#only("3-")[- Stockholders have a claim on these based on their ownership percentage 🙋‍♂️]
#only("1")[
#voiceover("As a stockholder, you have a claim on the company's assets. Assets include things like the company's property, cash, and inventory.")
]
#only("2")[
#voiceover("You also have a claim on the company's earnings, which are the profits the company generates.")
]
#only("3")[
#voiceover("Your claim on these assets and earnings is proportional to your ownership percentage in the company.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎯]
#v(40pt)
#only("1-")[- Stocks = Ownership 🤝]
#v(20pt)
#only("2-")[- Ownership ⇒ Claim on Assets & Earnings 📈]
#only("1")[
#voiceover("In summary, stocks represent ownership in a company.")
]
#only("2")[
#voiceover("And this ownership gives you, the stockholder, a claim on the company's assets and earnings.")
]
]