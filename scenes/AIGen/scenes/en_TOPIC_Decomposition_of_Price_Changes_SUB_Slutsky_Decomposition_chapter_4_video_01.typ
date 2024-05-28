#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
#v(40pt)
#only("1-")[- Separates effect of price change into:]
#v(20pt)
#only("2-")[  - Substitution Effect 🔄]
#v(10pt)
#only("3-")[  - Income Effect 💰]
#only("1")[
#voiceover("Slutsky Decomposition is a method that separates the effect of a price change into two components:")
]
#only("2")[
#voiceover("The Substitution Effect, which captures how consumers switch between goods when their relative prices change,")
]
#only("3")[
#voiceover("and the Income Effect, which reflects how a price change affects a consumer's purchasing power.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mathematical Representation]
#v(40pt)
#only("1-")[$ "Total Effect" = "Substitution Effect" + "Income Effect" $]
#v(20pt)
#only("2-")[$ dif x/dif p = (dif x/dif p)_"U const." + (dif x/dif p)_"Real Income const." $]
#only("1")[
#voiceover("Mathematically, Slutsky Decomposition states that the Total Effect of a price change equals the sum of the Substitution Effect and the Income Effect.")
]
#only("2")[
#voiceover("In calculus notation, this is written as the derivative of demand with respect to price equals the derivative of demand with respect to price holding utility constant, plus the derivative of demand with respect to price holding real income constant.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation]
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

# Plot the original budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Original Budget Line')

# Plot the new budget line after price change
y_new = 20 - 2*x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Plot the intermediate budget line (substitution effect)
y_int = 15 - 1.5*x
ax.plot(x, y_int, color='green', linestyle='--', label='Intermediate Budget Line')

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Graphically, the Slutsky Decomposition can be shown using budget lines and indifference curves. The original budget line is in blue. After a price change, the new budget line is in red. The intermediate budget line, shown in green, represents the Substitution Effect, holding utility constant at the original level.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Slutsky Decomposition: Total Effect = Substitution Effect + Income Effect]
#v(20pt)
#only("2-")[- Separates impact of price change on consumer behavior]
#v(20pt)
#only("3-")[- Key tool in consumer theory and demand analysis 🔑📈]
#only("1")[
#voiceover("In summary, the Slutsky Decomposition states that the Total Effect of a price change equals the Substitution Effect plus the Income Effect.")
]
#only("2")[
#voiceover("It separates the impact of a price change on consumer behavior into a substitution component and an income component.")
]
#only("3")[
#voiceover("The Slutsky Decomposition is a key tool in consumer theory and demand analysis, helping economists understand how consumers respond to price changes.")
]
]