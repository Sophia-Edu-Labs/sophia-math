#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
#v(40pt)
#only("1-")[- Trennt den Effekt einer Preisänderung in:]
#v(20pt)
#only("2-")[  - Substitutionseffekt 🔄]
#v(20pt)
#only("3-")[  - Einkommenseffekt 💰]
#only("1")[
#voiceover("Die Slutsky-Zerlegung ist eine Methode, um den Effekt einer Preisänderung in zwei Teile zu trennen:")
]
#only("2")[
#voiceover("Der Substitutionseffekt, der die Änderung des Konsums aufgrund der Änderung der relativen Preise darstellt,")
]
#only("3")[
#voiceover("und der Einkommenseffekt, der die Änderung des Konsums aufgrund der Änderung der Kaufkraft darstellt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung]
#v(40pt)
#only("1-")[- Verwendet Indifferenzkurven 📈 und Budgetbeschränkungen 💸]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Define the indifference curves
def indifference_curve(x, a, b):
    return b / x

x = np.linspace(0.1, 5, 100)
a1, b1 = 4, 2
a2, b2 = 8, 4

# Plot the indifference curves
ax.plot(x, indifference_curve(x, a1, b1), color='blue', label='Initial IC')
ax.plot(x, indifference_curve(x, a2, b2), color='red', label='New IC')

# Define the budget constraints
def budget_constraint(x, m, p1, p2):
    return m / p2 - p1 / p2 * x

m1, p11, p21 = 20, 2, 2
m2, p12, p22 = 20, 1, 2

# Plot the budget constraints
ax.plot(x, budget_constraint(x, m1, p11, p21), color='green', label='Initial BC')
ax.plot(x, budget_constraint(x, m2, p12, p22), color='orange', label='New BC')

# Add labels and legend
ax.set_xlabel('Gut 1')
ax.set_ylabel('Gut 2')
ax.legend()

# Show the plot
plt.show()
```, width: 360pt))
]
]
#only("2")[
#voiceover("Dies kann grafisch mit Indifferenzkurven dargestellt werden, die Kombinationen von Gütern repräsentieren, die das gleiche Zufriedenheitsniveau bieten, und Budgetbeschränkungen, die die Kombinationen von Gütern darstellen, die mit einem gegebenen Einkommen gekauft werden können.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegungsgrafik]
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

# Define the indifference curves
def indifference_curve(x, a, b):
    return b / x

x = np.linspace(0.1, 5, 100)
a1, b1 = 4, 2
a2, b2 = 8, 4

# Plot the indifference curves
ax.plot(x, indifference_curve(x, a1, b1), color='blue', label='Initial IC')
ax.plot(x, indifference_curve(x, a2, b2), color='red', label='New IC')

# Define the budget constraints
def budget_constraint(x, m, p1, p2):
    return m / p2 - p1 / p2 * x

m1, p11, p21 = 20, 2, 2
m2, p12, p22 = 20, 1, 2

# Plot the budget constraints
ax.plot(x, budget_constraint(x, m1, p11, p21), color='green', label='Initial BC')
ax.plot(x, budget_constraint(x, m2, p12, p22), color='orange', label='New BC')

# Add substitution and income effect arrows
ax.annotate('Substitutionseffekt', xy=(2.5, 1.5), xytext=(3, 2),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Einkommenseffekt', xy=(3.5, 2), xytext=(4, 2.5),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and legend
ax.set_xlabel('Gut 1')
ax.set_ylabel('Gut 2')
ax.legend()

# Show the plot
plt.show()
```, width: 360pt))
]
]
#only("1")[
#voiceover("Wenn sich der Preis eines Gutes ändert, dreht sich die Budgetbeschränkung. Der Konsument bewegt sich vom ursprünglichen Punkt zu einem neuen Punkt auf der neuen Budgetbeschränkung. Diese Bewegung kann in den Substitutionseffekt, der die Bewegung entlang der ursprünglichen Indifferenzkurve zum Punkt, an dem die neue Budgetbeschränkung tangiert ist, darstellt, und den Einkommenseffekt, der die Bewegung von diesem Punkt zum neuen optimalen Punkt auf der neuen Indifferenzkurve darstellt, zerlegt werden.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Slutsky-Zerlegung trennt den Effekt einer Preisänderung 📊]
#v(20pt)
#only("2-")[- Grafisch dargestellt mit Indifferenzkurven 📈 und Budgetbeschränkungen 💸]
#v(20pt)
#only("3-")[- Substitutionseffekt 🔄: Bewegung entlang der ursprünglichen IC]
#v(20pt)
#only("4-")[- Einkommenseffekt 💰: Bewegung zur neuen IC]
#only("1")[
#voiceover("Zusammenfassend trennt die Slutsky-Zerlegung den Effekt einer Preisänderung in Substitutions- und Einkommenseffekte.")
]
#only("2")[
#voiceover("Dies kann grafisch mit Indifferenzkurven und Budgetbeschränkungen dargestellt werden.")
]
#only("3")[
#voiceover("Der Substitutionseffekt ist die Bewegung entlang der ursprünglichen Indifferenzkurve,")
]
#only("4")[
#voiceover("während der Einkommenseffekt die Bewegung zur neuen Indifferenzkurve ist.")
]
]