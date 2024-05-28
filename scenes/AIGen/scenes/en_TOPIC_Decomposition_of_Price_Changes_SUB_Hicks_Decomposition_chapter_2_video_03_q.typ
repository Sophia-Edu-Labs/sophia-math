#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Income Effect]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the budget lines
m1 = 100 # Initial income
m2 = 120 # New income after price decrease
p1 = 10 # Initial price of good X
p2 = 8 # New price of good X
py = 5 # Price of good Y

x1 = np.linspace(0, m1/p1, 100)
y1 = (m1 - p1*x1) / py

x2 = np.linspace(0, m2/p2, 100)
y2 = (m2 - p2*x2) / py

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x1, y1, color='blue', label='Initial Budget Line')
plt.plot(x2, y2, color='red', label='New Budget Line')

# Add labels and title
plt.xlabel('Good X')
plt.ylabel('Good Y')
plt.title('Income Effect of a Price Decrease')

# Add legend
plt.legend()

# Show the plot
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
#only("1")[
#voiceover("Consider this graph showing the budget lines of a consumer. The blue line represents the initial budget, and the red line represents the new budget after a decrease in the price of good X.")
]
#v(40pt)
#only("2-")[- If the price of good X decreases, the budget line shifts outward 📈]
#only("2")[
#voiceover("If the price of good X decreases, the budget line shifts outward. This means that at every price point, the consumer can now afford more of both goods.")
]
#v(20pt)
#only("3-")[- The consumer's purchasing power, or real income, has increased 💰]
#only("3")[
#voiceover("In other words, the consumer's purchasing power, or real income, has increased. They can buy more goods with the same nominal income.")
]
#v(20pt)
#only("4")[
#voiceover("Now it's your turn to answer: What happens to the consumer's real income when the price of good X decreases? Does it increase or decrease?")
]
]
]#questionDef(
questionText: "What happens to the consumer's real income when the price of good $X$ decreases?",
answerOptions: ("Increases", "Decreases"),
correctAnswerIndex: 0,
)