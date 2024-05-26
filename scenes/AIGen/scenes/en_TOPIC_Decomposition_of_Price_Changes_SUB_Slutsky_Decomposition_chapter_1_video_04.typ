#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition Recap]
#v(40pt)

#only("1")[
#voiceover("Let's recap the substitution effect in Slutsky Decomposition.")
]

#only("2-")[
- Substitution effect occurs when a price change makes a good relatively cheaper or more expensive 💰
]

#only("2")[
#voiceover("The substitution effect occurs when a price change makes a good relatively cheaper or more expensive.")
]

#only("3-")[
- Leads to a change in consumption 🛒
]

#only("3")[
#voiceover("This change in relative prices leads to a change in consumption.")
]

#only("4-")[
- Holds utility constant 📈
]

#only("4")[
#voiceover("Importantly, the substitution effect holds utility constant. It isolates the impact of the change in relative prices, keeping the consumer's satisfaction level the same.")
]

#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the initial budget constraint
m = 100
p1, p2 = 10, 5

# Define the new price for good 1
p1_new = 5

# Calculate the initial optimal bundle
x1_optimal = (p2 * m) / (p1 * p2 + p1 * p1)
x2_optimal = (p1 * m) / (p1 * p2 + p2 * p2)

# Calculate the new optimal bundle after the price change
x1_new_optimal = (p2 * m) / (p1_new * p2 + p1_new * p1_new)
x2_new_optimal = (p1_new * m) / (p1_new * p2 + p2 * p2)

# Create a grid of points
x1 = np.linspace(0, m/p1_new, 100)
x2 = m/p2 - p1/p2 * x1
x2_new = m/p2 - p1_new/p2 * x1

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x1, x2, label='Initial Budget Line')
plt.plot(x1, x2_new, label='New Budget Line')
plt.plot([x1_optimal], [x2_optimal], 'ro', label='Initial Optimal Bundle')
plt.plot([x1_new_optimal], [x2_new_optimal], 'go', label='New Optimal Bundle')
plt.annotate('Substitution Effect', xy=(x1_new_optimal, x2_new_optimal), xytext=(x1_new_optimal+1, x2_new_optimal-5),
            arrowprops=dict(facecolor='black', shrink=0.05))
plt.xlim(0, m/p1_new+1)
plt.ylim(0, m/p2+5)
plt.xlabel('Good 1')
plt.ylabel('Good 2')
plt.title('Substitution Effect')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]

#only("5")[
#voiceover("This graph illustrates the substitution effect. When the price of Good 1 decreases, the budget line rotates outward. The consumer moves along the same indifference curve to a new optimal bundle, substituting towards the relatively cheaper good.")
]

]
]

#slide()[

#only("1")[
#voiceover("To summarize:")
]

#only("2-")[
- Substitution effect is a key component of Slutsky Decomposition 🔑
]

#only("2")[
#voiceover("The substitution effect is a key component of Slutsky Decomposition.")
]

]
```

### Second Slide
```typst

#slide()[

#only("1")[
#voiceover("To summarize:")
]

]
```

**Slide 2:**
```typst

#slide()[

#only("1")[
- Substitution effect is a key component of Slutsky Decomposition 🔑
]

]

#slide()[

#only("1")[
#voiceover("The substitution effect is a key component of Slutsky Decomposition.")
]

]

#slide()[

#only("1")[
- Substitution effect is a key component of Slutsky Decomposition 🔑
]

#only("1")[
#voiceover("The substitution effect is a key component of Slutsky Decomposition.")
]

]

#slide()[

#only("1-")[
- Occurs when relative prices change 💸
]

#only("1")[
#voiceover("It occurs when relative prices change.")
]

]

#slide()[

#only("1-")[
- Leads to substitution towards the relatively cheaper good 🔄
]

#only("1")[
#voiceover("This leads to substitution towards the relatively cheaper good.")
]

#only("2-")[
- Holds utility constant to isolate the effect 📊
]

#only("2")[
#voiceover("And it holds utility constant to isolate the effect of the change in relative prices.")
]

#only("3")[
#voiceover("Understanding the substitution effect is crucial for grasping how consumers respond to price changes and is a foundational concept in microeconomic theory.")
]
]