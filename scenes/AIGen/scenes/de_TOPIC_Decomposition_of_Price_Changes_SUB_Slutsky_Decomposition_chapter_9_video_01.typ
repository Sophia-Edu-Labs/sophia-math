#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung 🛍️]
#v(40pt)
#only("1-")[- Trennt den Effekt einer Preisänderung in:]
#v(20pt)
#only("2-")[  - Substitutionseffekt 🔄]
#v(20pt)
#only("3-")[  - Einkommenseffekt 💰]
#only("1")[
#voiceover("Die Slutsky-Zerlegung ist eine Methode, die den Effekt einer Preisänderung in zwei Komponenten trennt:")
]
#only("2")[
#voiceover("Der Substitutionseffekt, der die Änderung des Konsums aufgrund der Änderung der relativen Preise bei konstantem Nutzen darstellt, und")
]
#only("3")[
#voiceover("Der Einkommenseffekt, der die Änderung des Konsums aufgrund der Änderung der Kaufkraft bei konstanten Preisen darstellt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mathematische Darstellung 📜]
#v(40pt)
#only("1-")[$ "Gesamteffekt" = "Substitutionseffekt" + "Einkommenseffekt" $]
#v(20pt)
#only("2-")[$ x_1 - x_0 = (x_s - x_0) + (x_1 - x_s) $]
#only("1")[
#voiceover("Mathematisch besagt die Slutsky-Zerlegung, dass der Gesamteffekt einer Preisänderung gleich der Summe aus Substitutionseffekt und Einkommenseffekt ist.")
]
#only("2")[
#voiceover("In der Notation bedeutet x_1 minus x_0, was den Gesamteffekt darstellt, gleich x_s minus x_0, den Substitutionseffekt, plus x_1 minus x_s, den Einkommenseffekt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a plot
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the initial budget constraint
x = np.linspace(0, 10, 100)
y1 = 10 - x
ax.plot(x, y1, color='blue', label='Initial Budget Constraint')

# Plot the new budget constraint after price change
y2 = 12 - 1.5 * x
ax.plot(x, y2, color='red', label='New Budget Constraint')

# Plot the indifference curves
x = np.linspace(0, 10, 100)
y3 = 8 / x
ax.plot(x, y3, color='green', label='Indifference Curve 1')

x = np.linspace(0, 12, 100)
y4 = 10 / x
ax.plot(x, y4, color='purple', label='Indifference Curve 2')

# Label the initial and new equilibrium points
ax.scatter(4, 6, color='blue', label='Initial Equilibrium')
ax.scatter(3, 7.5, color='red', label='New Equilibrium')

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
ax.set_title('Slutsky Decomposition')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Grafisch kann die Slutsky-Zerlegung mit Hilfe von Indifferenzkurven und Budgetgeraden dargestellt werden. Der anfängliche Gleichgewichtspunkt verschiebt sich aufgrund der Preisänderung zu einem neuen Gleichgewichtspunkt. Die Bewegung entlang der anfänglichen Indifferenzkurve stellt den Substitutionseffekt dar, während die Verschiebung zu einer höheren Indifferenzkurve den Einkommenseffekt darstellt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Trennt den Effekt einer Preisänderung in Substitutions- und Einkommenseffekte]
#v(20pt)
#only("2-")[- Mathematische Darstellung: Gesamteffekt = Substitutionseffekt + Einkommenseffekt]
#v(20pt)
#only("3-")[- Grafische Darstellung mit Indifferenzkurven und Budgetgeraden]
#only("1")[
#voiceover("Zusammenfassend sind die wichtigsten Punkte der Slutsky-Zerlegung:")
]
#only("2")[
#voiceover("Sie trennt den Effekt einer Preisänderung in Substitutions- und Einkommenseffekte, mit einer mathematischen Darstellung, dass der Gesamteffekt gleich der Summe aus Substitutionseffekt und Einkommenseffekt ist.")
]
#only("3")[
#voiceover("Und sie kann grafisch mit Indifferenzkurven und Budgetgeraden dargestellt werden, wobei die Bewegung entlang einer Indifferenzkurve den Substitutionseffekt und die Verschiebung zu einer höheren Indifferenzkurve den Einkommenseffekt zeigt.")
]
]