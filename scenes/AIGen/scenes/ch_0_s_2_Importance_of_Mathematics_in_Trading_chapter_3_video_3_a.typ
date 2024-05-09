#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[P/E Ratio]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define data
stock_price = 50
earnings_per_share = 5

# Create a bar graph
fig, ax = plt.subplots(figsize=(6, 4))
x = ['Stock Price', 'EPS']
y = [stock_price, earnings_per_share]
colors = ['#1f77b4', '#ff7f0e'] 
ax.bar(x, y, color=colors)

# Add values on top of bars
for i, v in enumerate(y):
    ax.text(i, v + 1, str(v), ha='center', fontsize=12)

# Customize the graph
ax.set_ylabel('Dollars ($)')
ax.set_title('Stock Price and Earnings Per Share (EPS)')
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#v(20pt)
#only("1-")[That's right, great job! 🌟]
#v(20pt) 
#only("2-")[To calculate the P/E ratio:]
#v(10pt)
#only("3-")[- Stock price ($) = $ 50]
#only("4-")[- Earnings per share ($) = $ 5]
#v(10pt)
#only("5-")[P/E Ratio = stock price / earnings per share]
#v(10pt)
#only("6-")[P/E Ratio = 50 / 5 = 10]
#only("1")[
#voiceover("That's right, great job! You correctly calculated the P/E ratio.")
]
#only("2")[
#voiceover("Let's go through the solution step by step.")
]  
#only("3")[
#voiceover("We are given that the stock price is 50 dollars.")
]
#only("4")[
#voiceover("And the earnings per share are 5 dollars.")
]
#only("5")[
#voiceover("The P/E ratio is calculated by dividing the stock price by the earnings per share.")
]
#only("6")[
#voiceover("So, we divide 50 by 5, which equals 10. Therefore, the P/E ratio is 10.")
]
]