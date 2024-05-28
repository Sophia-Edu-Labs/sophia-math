#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
#v(40pt)
Which of the following represents the mathematical form of Slutsky Decomposition?
#v(40pt)
#only("-1")[a) Total Effect = Substitution Effect - Income Effect]#only("2-")[#text(fill:red)[a) Total Effect = Substitution Effect - Income Effect]]
#v(10pt)
#only("-2")[b) Total Effect = Substitution Effect + Income Effect]#only("3-")[#text(fill:green)[b) Total Effect = Substitution Effect + Income Effect]]
#v(10pt)
#only("-3")[c) Total Effect = Income Effect - Substitution Effect]#only("4-")[#text(fill:red)[c) Total Effect = Income Effect - Substitution Effect]]
#v(10pt)
#only("-4")[d) Total Effect = Income Effect + Utility Effect]#only("5-")[#text(fill:red)[d) Total Effect = Income Effect + Utility Effect]]
#v(40pt)

#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Option a) is incorrect. Slutsky Decomposition adds, not subtracts, the substitution and income effects.")]
#only("3")[#voiceover("Option b) is correct. Slutsky Decomposition states that the total effect of a price change is the sum of the substitution effect and the income effect.")]
#only("4")[#voiceover("Option c) is incorrect. It reverses the order of the effects compared to the correct formula.")]
#only("5")[#voiceover("Option d) is also incorrect. It includes the utility effect, which is not part of Slutsky Decomposition.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition Formula]
#v(40pt)
#only("1-")[The correct mathematical form is:]
#v(20pt)
#only("2-")[#text(size: 24pt)[$ "Total Effect" = "Substitution Effect" + "Income Effect" $]]
#v(40pt)
#only("3-")[More formally:]
#v(20pt)
#only("4-")[#text(size: 24pt)[$ x_1 - x_0 = (x_s - x_0) + (x_1 - x_s) $]]
#v(40pt)
#only("5-")[Where:]
- $x_0$ is the initial quantity demanded
- $x_1$ is the new quantity demanded
- $x_s$ is the quantity demanded due to the substitution effect

#only("1")[#voiceover("Let's look at the correct mathematical form of Slutsky Decomposition.")]
#only("2")[#voiceover("In words, it states that the total effect equals the substitution effect plus the income effect.")]
#only("3")[#voiceover("We can express this more formally using mathematical notation.")]
#only("4")[#voiceover("x sub 1 minus x sub 0 equals open parenthesis x sub s minus x sub 0 close parenthesis plus open parenthesis x sub 1 minus x sub s close parenthesis.")]
#only("5")[#voiceover("Here, x sub 0 is the initial quantity demanded, x sub 1 is the new quantity demanded after the price change, and x sub s is the quantity demanded due solely to the substitution effect, holding utility constant.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, 'b', label='Initial Budget Line')

# Plot the new budget line after price change
y_new = 12.5 - 1.25*x
ax.plot(x, y_new, 'r', label='New Budget Line')

# Plot the intermediate budget line for substitution effect
y_int = 10 - 1.25*x
ax.plot(x, y_int, 'g--', label='Intermediate Budget Line')

# Plot the indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 20 / x
ax.plot(x, y1, 'k--', alpha=0.5)
ax.plot(x, y2, 'k--', alpha=0.5)

# Plot the initial optimal point
ax.scatter(4, 6, color='blue', label='Initial Optimum')

# Plot the final optimal point
ax.scatter(6, 5, color='red', label='New Optimum')

# Plot the intermediate optimal point for substitution effect
ax.scatter(5, 5, color='green', label='Intermediate Optimum')

# Add arrows for income and substitution effects
ax.annotate('Substitution Effect', xy=(5, 5), xytext=(5.5, 6), 
            arrowprops=dict(facecolor='green', shrink=0.05))
ax.annotate('Income Effect', xy=(6, 5), xytext=(6.5, 4), 
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
ax.set_title('Slutsky Decomposition')
ax.legend()

# Display the plot
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[#voiceover("This graph visualizes Slutsky Decomposition. The blue point represents the initial optimum, the red point the new optimum after a price change, and the green point an intermediate optimum considering only the substitution effect.")]
#only("2")[#voiceover("The movement from blue to green represents the substitution effect - the change in consumption due to the change in relative prices, holding utility constant.")]
#only("3")[#voiceover("The movement from green to red represents the income effect - the additional change in consumption due to the change in purchasing power.")]
#only("4")[#voiceover("Together, the substitution effect (in green) and the income effect (in black) sum to the total effect of the price change on the quantity demanded of the goods.")]
]