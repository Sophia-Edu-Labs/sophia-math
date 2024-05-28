#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rückblick auf die Slutsky-Zerlegung]
#v(40pt)
#only("1-")[
- Grafisch dargestellt mit Hilfe von Indifferenzkurven und Budgetbeschränkungen 📈
]
#v(20pt)
#only("2-")[
- Indifferenzkurven repräsentieren die Präferenzen der Konsumenten 😊
]
#v(20pt)
#only("3-")[
- Budgetbeschränkungen zeigen erschwingliche Kombinationen von Gütern 💰
]
#v(20pt)
#only("4-")[
- Preisänderung führt dazu, dass die Budgetbeschränkung schwenkt 🔄
]
#v(20pt)
#only("5-")[
- Substitutionseffekt: Bewegung entlang der anfänglichen Indifferenzkurve 🔀
]
#v(20pt)
#only("6-")[
- Einkommenseffekt: Verschiebung zu einer neuen Indifferenzkurve 💸
]
#only("1")[
#voiceover("Die Slutsky-Zerlegung kann grafisch mit Hilfe von Indifferenzkurven und Budgetbeschränkungen dargestellt werden.")
]
#only("2")[
#voiceover("Indifferenzkurven repräsentieren die Präferenzen der Konsumenten und zeigen Kombinationen von Gütern, die das gleiche Zufriedenheitsniveau bieten.")
]
#only("3")[
#voiceover("Budgetbeschränkungen zeigen die Kombinationen von Gütern, die der Konsument sich bei gegebenem Einkommen und den Preisen der Güter leisten kann.")
]
#only("4")[
#voiceover("Wenn sich ein Preis ändert, schwenkt die Budgetbeschränkung und verändert die Menge der erschwinglichen Kombinationen.")
]
#only("5")[
#voiceover("Der Substitutionseffekt wird durch die Bewegung entlang der anfänglichen Indifferenzkurve gezeigt, wobei der Nutzen konstant gehalten wird.")
]
#only("6")[
#voiceover("Der Einkommenseffekt wird durch die Verschiebung zu einer neuen Indifferenzkurve gezeigt, die die Veränderung der Kaufkraft widerspiegelt.")
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

# Create a new figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Set the limits for x and y axes
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Add labels for x and y axes
ax.set_xlabel('Gut 1', fontsize=14)
ax.set_ylabel('Gut 2', fontsize=14)

# Plot the initial budget constraint
x1 = np.linspace(0, 10, 100)
y1 = 10 - x1
ax.plot(x1, y1, color='blue', linewidth=2, label='Anfängliche Budgetbeschränkung')

# Plot the initial indifference curve
x2 = np.linspace(0, 10, 100)
y2 = 10 / x2
ax.plot(x2, y2, color='red', linewidth=2, label='Anfängliche Indifferenzkurve')

# Plot the pivoted budget constraint
y3 = 20 - 2 * x1
ax.plot(x1, y3, color='green', linewidth=2, label='Geschwenkte Budgetbeschränkung')

# Plot the final indifference curve
y4 = 20 / x2
ax.plot(x2, y4, color='purple', linewidth=2, label='Endgültige Indifferenzkurve')

# Add a legend
ax.legend(fontsize=12)

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Hier ist eine grafische Darstellung der Slutsky-Zerlegung. Die blaue Linie repräsentiert die anfängliche Budgetbeschränkung, und die rote Kurve ist die anfängliche Indifferenzkurve.")
]
#only("2")[
#voiceover("Wenn der Preis von Gut 1 sinkt, schwenkt die Budgetbeschränkung nach außen, wie durch die grüne Linie gezeigt.")
]
#only("3")[
#voiceover("Der Substitutionseffekt ist die Bewegung entlang der anfänglichen Indifferenzkurve bis zum Tangentialpunkt mit der neuen Budgetbeschränkung.")
]
#only("4")[
#voiceover("Der Einkommenseffekt ist die Verschiebung von diesem Punkt zum endgültigen Konsumpunkt auf einer höheren Indifferenzkurve, dargestellt in lila.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[
- Die Slutsky-Zerlegung trennt den Preiseffekt in Substitutions- und Einkommenseffekte 🔍
]
#v(20pt)
#only("2-")[
- Grafisch dargestellt mit Indifferenzkurven und Budgetbeschränkungen 📊
]
#v(20pt)
#only("3-")[
- Substitutionseffekt: Bewegung entlang der anfänglichen Indifferenzkurve 🔄
]
#v(20pt)
#only("4-")[
- Einkommenseffekt: Verschiebung zu einer neuen Indifferenzkurve 💰
]
#v(20pt)
#only("5-")[
- Ein wichtiges Werkzeug zur Analyse des Konsumentenverhaltens 🧐
]
#only("1")[
#voiceover("Zusammenfassend trennt die Slutsky-Zerlegung den Effekt einer Preisänderung in Substitutions- und Einkommenseffekte.")
]
#only("2")[
#voiceover("Dies kann grafisch mit Indifferenzkurven und Budgetbeschränkungen dargestellt werden.")
]
#only("3")[
#voiceover("Der Substitutionseffekt wird durch die Bewegung entlang der anfänglichen Indifferenzkurve gezeigt, wobei der Nutzen konstant gehalten wird.")
]
#only("4")[
#voiceover("Der Einkommenseffekt wird durch die Verschiebung zu einer neuen Indifferenzkurve gezeigt, die die Veränderung der Kaufkraft widerspiegelt.")
]
#only("5")[
#voiceover("Die Slutsky-Zerlegung ist ein wichtiges Werkzeug zur Analyse, wie Konsumenten auf Preisänderungen reagieren.")
]
]