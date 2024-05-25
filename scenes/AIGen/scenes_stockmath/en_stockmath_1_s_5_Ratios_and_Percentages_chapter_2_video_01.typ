#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Measuring Stock Price Changes 📈]
#v(40pt)
#only("1-")[- Stock prices change over time 🕰️]
#v(20pt)
#only("2-")[- Percentages provide a standardized way to compare changes 📊]
#only("1")[
#voiceover("Stock prices are constantly changing over time. To understand and compare these changes, we use percentages.")
]
#only("2")[
#voiceover("Percentages provide a standardized way to measure and compare price changes across different stocks, regardless of their actual prices.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculating Percentage Change 🧮]
#v(40pt)
#only("1-")[$ ("Percentage Change" %) = (("New Price" - "Old Price")/"Old Price") dot 100 $]
#v(20pt)
#only("2-")[Example: $200 → $240]
#v(20pt)
#only("2-")[$ % = ((240 - 200)/200) dot 100 = 20% $]
#only("1")[
#voiceover("To calculate the percentage change, we use this formula: Percentage change equals the difference between the new and old price, divided by the old price, and then multiplied by 100.")
]
#only("2")[
#voiceover("For example, if a stock price increases from 200 dollars to 240 dollars, the percentage change would be 240 minus 200, divided by 200, times 100, which equals 20 percent.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Percentage Changes 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Stock prices
stocks = ['Stock A', 'Stock B', 'Stock C']
old_prices = [100, 50, 200]
new_prices = [120, 45, 180]

# Calculate percentage changes
percent_changes = [(new-old)/old*100 for old, new in zip(old_prices, new_prices)]

# Create the plot
plt.figure(figsize=(6, 4))
plt.bar(stocks, percent_changes)
for i, v in enumerate(percent_changes):
    plt.text(i, v+0.5, f'{v:.1f}%', ha='center') 
plt.axhline(0, color='black', lw=0.5)
plt.ylim(min(percent_changes)-5, max(percent_changes)+5)
plt.title('Percentage Changes in Stock Prices')
plt.xlabel('Stocks')
plt.ylabel('Percentage Change (%)')
plt.tight_layout()
plt.show()
```, 
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of percentage changes for three different stocks. Stock A increased by 20%, Stock B decreased by 10%, and Stock C decreased by 10%. Despite the stocks having different actual prices, the percentage changes allow us to easily compare their performance.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Percentages standardize price changes 📏]
#v(20pt)
#only("2-")[- Calculate using: $% = (("New" - "Old")/"Old") * 100$]
#v(20pt)
#only("3-")[- Allows comparison across different stocks 🏆]
#only("1")[
#voiceover("In summary, percentages standardize stock price changes, making it easier to understand and compare performance.")
]
#only("2")[
#voiceover("The percentage change is calculated by taking the difference between the new and old price, dividing by the old price, and multiplying by 100.")
]
#only("3")[
#voiceover("By using percentages, investors can effectively compare price changes across different stocks, regardless of their actual price levels.")
]
]