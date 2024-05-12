#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Graphs and Charts 📈]
#v(40pt)
#only("1-")[- Essential visual tools for stock trading 👀]
#only("1")[
#voiceover("Graphs and charts are essential visual tools for stock trading.")
]
#v(20pt)
#only("2-")[- Highlight data trends 📉📈]
#only("2")[
#voiceover("They help highlight data trends,")
]
#v(20pt)
#only("3-")[- Aid decision-making 🧠]
#only("3")[
#voiceover("and aid in decision-making.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Line Charts 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.linspace(0, 10, 100)
y = np.sin(x)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', linewidth=2, label='Stock Price')

# Add labels and title
plt.xlabel('Time', fontsize=14)
plt.ylabel('Price', fontsize=14)
plt.title('Stock Price Over Time', fontsize=16)

# Add legend
plt.legend(fontsize=12)

# Add grid
plt.grid(True)

plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Line charts are particularly useful for viewing price changes over time.")
]
#v(20pt)
#only("2-")[- Show price changes over time ⏳]
#only("2")[
#voiceover("They clearly show how the price of a stock has changed over a given period.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Graphs and charts are vital in stock trading 📊]
#only("1")[
#voiceover("To sum up, graphs and charts are vital tools in stock trading.")
]
#v(20pt)
#only("2-")[- They visualize data and trends 📈]
#only("2")[
#voiceover("They help visualize data and trends,")
]
#v(20pt)
#only("3-")[- Assist in making informed decisions 🤔]
#only("3")[
#voiceover("and assist in making informed decisions.")
]
#v(20pt)
#only("4-")[- Line charts are especially useful for price changes 💹]
#only("4")[
#voiceover("Line charts, in particular, are especially useful for viewing price changes over time.")
]
]