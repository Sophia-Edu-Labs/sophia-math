#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Du hast korrekt einen wesentlichen Unterschied zwischen der Hicks- und der Slutsky-Zerlegung erkannt.")
]

#text(size: 30pt, weight: "bold")[Wesentlicher Unterschied]

#v(40pt)

#only("2-")[- Hicks-Zerlegung hält den Nutzen konstant 🎯]
// Der wesentliche Punkt der Hicks-Zerlegung wird ab Folie 2 gezeigt

#only("3-")[- Slutsky-Zerlegung hält das reale Einkommen konstant 💰]
// Der wesentliche Punkt der Slutsky-Zerlegung wird ab Folie 3 gezeigt

#only("2")[
#voiceover("Die Hicks-Zerlegung hält den Nutzen konstant, wenn die Substitutions- und Einkommenseffekte einer Preisänderung getrennt werden.")
]

#only("3")[
#voiceover("Andererseits hält die Slutsky-Zerlegung das reale Einkommen konstant, wenn diese Effekte getrennt werden.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung]

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

# Set the limits of the plot
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Draw the initial budget line
ax.plot([0, 10], [10, 0], color='blue', linewidth=2, label='Initial Budget Line')

# Draw the new budget line after price change
ax.plot([0, 20/3], [10, 0], color='red', linewidth=2, label='New Budget Line')

# Draw the indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 - 0.5 * x
y2 = 20 - 2 * x
ax.plot(x, y1, color='green', linewidth=2, label='Initial Indifference Curve')
ax.plot(x, y2, color='purple', linewidth=2, label='New Indifference Curve')

# Highlight the initial and final consumption points
ax.scatter(5, 5, color='black', s=50, label='Initial Consumption')
ax.scatter(4, 6, color='black', s=50, label='Final Consumption')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.legend()

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// Die grafische Darstellung zeigt die ursprünglichen und neuen Budgetgeraden, Indifferenzkurven und Konsumpunkte.

#only("1")[
#voiceover("Lass uns diesen Unterschied visualisieren. In diesem Diagramm stellt die blaue Linie die ursprüngliche Budgetbeschränkung dar, und die rote Linie ist die neue Budgetbeschränkung nach einer Preisänderung. Die grünen und violetten Kurven sind die Indifferenzkurven.")
]

#only("2")[
#voiceover("Bei der Hicks-Zerlegung würden wir die Änderung vom ursprünglichen zum endgültigen Konsumpunkt analysieren, dargestellt durch die schwarzen Punkte, während der Konsument auf derselben Indifferenzkurve bleibt, was konstanten Nutzen repräsentiert.")
]

#only("3")[
#voiceover("Bei der Slutsky-Zerlegung würden wir diese Änderung analysieren, während der Konsument auf einer Budgetgeraden bleibt, die das gleiche reale Einkommen repräsentiert, welche parallel zur neuen Budgetgeraden und tangential zur ursprünglichen Indifferenzkurve ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Hicks-Zerlegung: Konstanter Nutzen 🎯]
// Der Zusammenfassungspunkt über die Hicks-Zerlegung wird ab Folie 1 gezeigt

#only("2-")[- Slutsky-Zerlegung: Konstantes Realeinkommen 💰]
// Der Zusammenfassungspunkt über die Slutsky-Zerlegung wird ab Folie 2 gezeigt

#only("3-")[- Unterschiedliche Interpretationen der Substitutions- und Einkommenseffekte 🔍]
// Die Implikation des Unterschieds wird ab Folie 3 gezeigt

#only("1")[
#voiceover("Zusammengefasst hält die Hicks-Zerlegung den Nutzen konstant, wenn die Substitutions- und Einkommenseffekte einer Preisänderung analysiert werden.")
]

#only("2")[
#voiceover("Im Gegensatz dazu hält die Slutsky-Zerlegung das reale Einkommen während dieser Analyse konstant.")
]

#only("3")[
#voiceover("Dieser wesentliche Unterschied führt zu unterschiedlichen Interpretationen der Substitutions- und Einkommenseffekte in jeder Zerlegung.")
]
]