#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the role of stock exchanges in the stock market.")
]
#text(size: 30pt, weight: "bold")[Stock Exchanges 📈]
// The title "Stock Exchanges" is shown on this slide with a chart increasing emoji
#v(40pt)
#only("2")[
#voiceover("Stock exchanges, such as the New York Stock Exchange (NYSE) and NASDAQ, are organized markets where stocks are traded.")
]
#only("2-")[- NYSE 🗽, NASDAQ 🖥️]
// NYSE and NASDAQ are listed as bullet points from slide 2 onward, with emoji representing New York and technology respectively
#v(20pt)
#only("3")[
#voiceover("They play a crucial role in the stock market by facilitating the buying and selling of stocks.")
]
#only("3-")[- Facilitate buying 💸 and selling 💰 of stocks]
// The role of facilitating buying and selling is added as a bullet point from slide 3 onward, with money emoji
#v(20pt)
#only("4")[
#voiceover("Stock exchanges provide a regulated environment for these transactions, ensuring fair and efficient trading.")
]
#only("4-")[- Regulated environment 🏛️ for fair and efficient trading ⚖️]
// The regulated environment and fair trading aspects are added as a bullet point from slide 4 onward, with a government building and balance scale emoji
]

#slide()[
#only("1")[
#voiceover("Here's a simplified visualization of how stock exchanges work.")
]
#text(size: 30pt, weight: "bold")[Stock Exchange Visualization 📊]
// The title "Stock Exchange Visualization" is shown on this slide with a bar chart emoji
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 4))

# Define the stock prices and labels
stock_prices = [50, 75, 60, 90]
stock_labels = ['Stock A', 'Stock B', 'Stock C', 'Stock D']

# Create the bar chart
bars = ax.bar(stock_labels, stock_prices)

# Add values above the bars
for bar in bars:
    height = bar.get_height()
    ax.text(bar.get_x() + bar.get_width()/2., height,
            '$' + str(height),
            ha='center', va='bottom')

# Add labels and title
ax.set_xlabel('Stocks')
ax.set_ylabel('Price ($)')
ax.set_title('Stock Prices on the Exchange')

# Adjust the layout
fig.tight_layout()

plt.show()
```,
width: 360pt),
)
]
]
// A bar chart is shown visualizing stock prices for different stocks traded on the exchange
#only("2")[
#voiceover("The stock exchange matches buyers and sellers, ensuring that transactions occur at fair market prices determined by supply and demand.")
]
]]

#slide()[
#only("1")[
#voiceover("In summary, stock exchanges are essential to the functioning of the stock market.")
]
#text(size: 30pt, weight: "bold")[Key Points 🔑]
// The title "Key Points" is shown on this slide with a key emoji
#v(40pt)
#only("2")[
#voiceover("They provide organized markets, such as the NYSE and NASDAQ, where stocks can be bought and sold.")
]
#only("2-")[- Organized markets (NYSE 🗽, NASDAQ 🖥️)]
// The point about organized markets is added as a bullet from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("Stock exchanges facilitate these transactions, ensuring liquidity and efficient price discovery.")
]
#only("3-")[- Facilitate transactions 💸💰, ensure liquidity 🌊 and price discovery 🔍]
// The facilitation of transactions, liquidity, and price discovery are added as a bullet from slide 3 onward, with relevant emoji
#v(20pt)
#only("4")[
#voiceover("Importantly, stock exchanges operate in a regulated environment, promoting fair and transparent trading practices.")
]
#only("4-")[- Regulated environment 🏛️ for fair and transparent trading 🔎]
// The regulated environment and fair, transparent trading are added as a bullet from slide 4 onward, with a government building and magnifying glass emoji
]