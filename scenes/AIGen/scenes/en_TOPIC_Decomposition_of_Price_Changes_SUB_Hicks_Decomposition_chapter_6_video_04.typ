#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition Recap 🎓]
#v(40pt)
#only("1-")[
- Separates effect of price change into:
  - Substitution effect 🔄
  - Income effect 💰
]
#only("1")[
#voiceover("Let's recap what we've learned about Hicks Decomposition. Hicks Decomposition separates the effect of a price change into two parts: the substitution effect and the income effect.")
]
#only("2-")[
- Holds utility constant 📈
]
#only("2")[
#voiceover("A key feature of Hicks Decomposition is that it holds utility constant when analyzing the effects of a price change.")
]
#only("3-")[
- Useful for analyzing consumer behavior 🛍️
]
#only("3")[
#voiceover("Hicks Decomposition is a powerful tool for analyzing consumer behavior, as it allows us to understand how consumers adjust their consumption in response to price changes.")
]
#only("4-")[
- Practical applications in economic analysis 📊
]
#only("4")[
#voiceover("This decomposition has many practical applications in economic analysis, such as evaluating the impact of taxes or subsidies on consumer choices.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Set the limits for x and y axes
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Label the axes
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')

# Draw the initial budget line
x = np.linspace(0, 10, 100)
y1 = 10 - 0.8 * x
ax.plot(x, y1, color='blue', linestyle='-', label='Initial Budget Line')

# Draw the new budget line after price change
y2 = 10 - 0.5 * x
ax.plot(x, y2, color='red', linestyle='-', label='New Budget Line')

# Draw indifference curves
x = np.linspace(0.1, 10, 100)
y1 = 50 / x
y2 = 72 / x
ax.plot(x, y1, color='green', linestyle='--', label='Initial Indifference Curve')
ax.plot(x, y2, color='purple', linestyle='--', label='New Indifference Curve')

# Mark the initial optimal point
ax.plot(6.25, 6.25, marker='o', markersize=8, color='blue', label='Initial Optimal Point')

# Mark the new optimal point after substitution effect
ax.plot(8, 4.5, marker='o', markersize=8, color='purple', label='Optimal Point after Substitution')

# Mark the final optimal point after income effect
ax.plot(7.2, 5.76, marker='o', markersize=8, color='red', label='Final Optimal Point')

# Add a legend
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Here's a graphical representation of Hicks Decomposition. The blue line is the initial budget constraint, and the red line is the new budget constraint after a price change. The green and purple curves are indifference curves. The blue dot is the initial optimal consumption point. The purple dot shows the optimal point after the substitution effect, and the red dot is the final optimal point after the income effect.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[
- Hicks Decomposition: A powerful tool 🛠️
]
#only("1")[
#voiceover("To sum up, Hicks Decomposition is a powerful tool in the economist's toolkit.")
]
#only("2-")[
- Separates substitution and income effects 🔍
]
#only("2")[
#voiceover("It allows us to separate the substitution and income effects of a price change, providing valuable insights into consumer behavior.")
]
#only("3-")[
- Holds utility constant 📊
]
#only("3")[
#voiceover("By holding utility constant, Hicks Decomposition isolates the pure substitution effect before considering the income effect.")
]
#only("4-")[
- Practical applications 🌍
]
#only("4")[
#voiceover("This decomposition has many practical applications in real-world economic analysis, from tax policy to welfare analysis.")
]
#only("5-")[
- Essential for understanding consumer behavior 🎓
]
#only("5")[
#voiceover("Understanding Hicks Decomposition is essential for any economist seeking to analyze and predict consumer behavior in response to changing market conditions.")
]
]