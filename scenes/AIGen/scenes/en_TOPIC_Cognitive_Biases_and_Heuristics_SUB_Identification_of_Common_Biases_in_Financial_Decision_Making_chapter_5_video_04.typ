#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior 🐑]

#v(40pt)

#only("1-")[- Following the actions of a larger group]

#only("2-")[- Ignoring individual analysis]

#only("3-")[- Can lead to irrational decisions in finance]

#only("1")[
#voiceover("Herd behavior is the tendency to follow and mimic the actions of a larger group.")
]

#only("2")[
#voiceover("This often leads to ignoring one's own individual analysis.")
]

#only("3")[
#voiceover("In finance, herd behavior can lead to irrational decisions, such as investing in a stock just because many others are doing so, without properly evaluating the fundamentals of the company.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📊]

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
y1 = 0.2 * x + np.random.randn(100)
y2 = 0.5 * x + np.random.randn(100) + 5

# Plot data
fig, ax = plt.subplots(figsize=(6, 4))
ax.scatter(x, y1, color='blue', label='Individual Analysis')
ax.scatter(x, y2, color='red', label='Herd Behavior')

# Add legend and labels
ax.legend(loc='upper left')
ax.set_xlabel('Time')
ax.set_ylabel('Stock Price')
ax.set_title('Herd Behavior vs Individual Analysis')

plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's an example. The blue dots represent decisions based on individual analysis, while the red dots show decisions influenced by herd behavior.")
]

#only("2")[
#voiceover("As you can see, the herd behavior decisions tend to cluster together and deviate from what individual analysis might suggest.")
]

]
]

#slide()[
#text(size: 30pt, weight: "bold")[Avoiding Herd Behavior 🧠]

#v(40pt)

#only("1-")[- Conduct your own research]

#only("2-")[- Trust your analysis]

#only("3-")[- Be aware of biases]

#only("1")[
#voiceover("To avoid herd behavior in your financial decisions, it's important to conduct your own research.")
]

#only("2")[
#voiceover("Trust your own analysis rather than simply following what others are doing.")
]

#only("3")[
#voiceover("And always be aware of potential biases, including the bias towards herd behavior.")
]

]