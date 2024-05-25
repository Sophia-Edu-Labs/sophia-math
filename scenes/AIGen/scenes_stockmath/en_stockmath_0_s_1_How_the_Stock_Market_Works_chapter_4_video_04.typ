#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Market Indices Recap 📈]

#v(40pt)

#only("1-")[- Represent overall market or specific sectors]
#only("2-")[- Examples: S&P 500, Dow Jones Industrial Average]
#only("3-")[- Provide snapshot of market trends and health 📊]
#only("4-")[- Help investors make informed decisions 🧠]
#only("5-")[- Benchmark for comparing individual stock performance 📏]

#only("1")[
#voiceover("Let's recap the key points about market indices. Market indices represent the overall performance of the stock market or specific sectors within it.")
]

#only("2")[
#voiceover("Some well-known examples of market indices include the S&P 500 and the Dow Jones Industrial Average.")
]

#only("3")[
#voiceover("These indices provide a snapshot of market trends and the overall health of the economy.")
]

#only("4")[
#voiceover("By tracking market indices, investors can make more informed decisions about their investments.")
]

#only("5")[
#voiceover("Market indices also serve as benchmarks for comparing the performance of individual stocks or portfolios.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Example 📈]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create example data for the S&P 500 and a individual stock
sp500_data = np.random.choice(np.arange(2500, 3000), 100)
stock_data = np.random.choice(np.arange(50, 100), 100)

# Create the plot
fig, ax = plt.subplots(figsize=(8, 6))

# Plot the S&P 500 data
ax.plot(sp500_data, label='S&P 500', linewidth=2, color='blue')

# Plot the individual stock data
ax.plot(stock_data, label='Individual Stock', linewidth=2, color='red')

# Add labels and title
ax.set_xlabel('Time', fontsize=14)
ax.set_ylabel('Price', fontsize=14)
ax.set_title('S&P 500 vs Individual Stock', fontsize=16)

# Add legend
ax.legend(fontsize=12)

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a visual example comparing the S&P 500 index to an individual stock. The blue line represents the S&P 500, while the red line represents an individual stock.")
]

#only("2")[
#voiceover("As you can see, the individual stock's performance can deviate significantly from the overall market trend represented by the S&P 500.")
]

#only("3")[
#voiceover("This highlights the importance of using market indices as benchmarks for evaluating individual stock performance.")
]

]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#v(40pt)

#only("1-")[- Market indices represent overall market performance 📈]
#only("2-")[- Provide snapshot of market trends and health 📊]
#only("3-")[- Help investors make informed decisions 🧠]
#only("4-")[- Serve as benchmarks for individual stock comparison 📏]

#only("1")[
#voiceover("To sum up, market indices are crucial tools for investors as they represent the overall performance of the stock market.")
]

#only("2")[
#voiceover("They provide a snapshot of market trends and the overall health of the economy.")
]

#only("3")[
#voiceover("By tracking market indices, investors can make more informed decisions about their investments.")
]

#only("4")[
#voiceover("Lastly, market indices serve as benchmarks for comparing the performance of individual stocks or portfolios.")
]

]