#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buying Stocks 🛒📈]

#v(40pt)

#only("1-")[- Set up a brokerage account 🏦]
#only("1")[#voiceover("To buy stocks, you first need to set up a brokerage account. This is an account with a licensed brokerage firm that allows you to invest in the stock market.")]

#v(20pt)

#only("2-")[- Place buy orders for desired stocks 📝]
#only("2")[#voiceover("Once your account is set up, you can place buy orders for the stocks you want to purchase. You specify the stock, the number of shares, and the price you're willing to pay.")]

#v(20pt)

#only("3-")[- Pay the market price 💰]
#only("3")[#voiceover("When your buy order is executed, you pay the current market price for the shares. The cost is deducted from your brokerage account, and the shares are added to your portfolio.")]

#v(40pt)

#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create the figure and axis
fig, ax = plt.subplots(figsize=(6, 4))

# Define the data
steps = ['Set up brokerage account', 'Place buy order', 'Pay market price']
y_pos = np.arange(len(steps))

# Create the bar plot
ax.barh(y_pos, [1, 1, 1], align='center', color=['#1f77b4', '#ff7f0e', '#2ca02c'])

# Add labels and title
ax.set_yticks(y_pos)
ax.set_yticklabels(steps)
ax.invert_yaxis()  # Invert the y-axis so the first step is at the top
ax.set_xlabel('Steps to Buying Stocks')
ax.set_title('Buying Stocks Process')

# Remove the frame and ticks
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
ax.xaxis.set_ticks_position('none')
ax.yaxis.set_ticks_position('none')

plt.tight_layout()
plt.show()
```, width: 360pt))
]
]
#only("4")[#voiceover("Here's a visual summary of the process. First, set up your brokerage account. Then, place buy orders for the stocks you want. Finally, pay the market price when your order is executed.")]

]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#v(40pt)

#only("1-")[- Brokerage account is essential 🏦]
#only("1")[#voiceover("Remember, a brokerage account is essential to start buying stocks. It's your gateway to the stock market.")]

#v(20pt)

#only("2-")[- Buy orders specify your investment 📝]
#only("2")[#voiceover("Your buy orders specify the details of your investment - which stocks, how many shares, and at what price.")]

#v(20pt)

#only("3-")[- Market price determines cost 💰]
#only("3")[#voiceover("The current market price determines the actual cost of your shares when your order is executed.")]

#v(40pt)

#only("4-")[Happy investing! 📈🚀]
#only("4")[#voiceover("With these steps in mind, you're ready to start your journey in stock investing. Happy investing!")]

]