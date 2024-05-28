#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung Beispiel 📉]

#only("1-")[
- Der Preis des Gutes X sinkt
]

#only("2-")[
- Gesamteffekt: $Delta x = x_1 - x_0$
]

#only("3-")[
- Substitutionseffekt: $Delta x_s = x_s - x_0$
]

#only("4-")[
- Einkommenseffekt: $Delta x_i = x_1 - x_s$
]

#only("5-")[
$ Delta x = Delta x_s + Delta x_i$
]

#only("1")[
#voiceover("Lass uns das Beispiel wiederholen, bei dem der Preis des Gutes X sinkt.")
]

#only("2")[
#voiceover("Der Gesamteffekt auf die nachgefragte Menge des Gutes X ist die Differenz zwischen der neuen nachgefragten Menge, x_1, und der anfänglichen nachgefragten Menge, x_0.")
]

#only("3")[
#voiceover("Der Substitutionseffekt ist die Änderung der nachgefragten Menge von x_0 zu x_s, wobei x_s die nachgefragte Menge aufgrund des reinen Substitutionseffekts ist, bei konstanter Nutzenfunktion.")
]

#only("4")[
#voiceover("Der Einkommenseffekt ist die Änderung der nachgefragten Menge von x_s zu x_1, da die Kaufkraft des Konsumenten steigt.")
]

#only("5")[
#voiceover("Der Gesamteffekt ist die Summe aus Substitutionseffekt und Einkommenseffekt, wie durch die Slutsky-Gleichung gezeigt.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung 📈]

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a new figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Set the limits for x and y axes
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Add labels for the axes
ax.set_xlabel('Gut Y')
ax.set_ylabel('Gut X')

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', linewidth=2, label='Anfängliche Budgetlinie')

# Plot the new budget line after the price decrease
y_new = 12.5 - 1.25 * x
ax.plot(x, y_new, color='red', linewidth=2, label='Neue Budgetlinie')

# Plot the initial optimal bundle
ax.plot(4, 6, marker='o', markersize=10, color='blue', label='Anfängliches Bündel')

# Plot the intermediate bundle after substitution effect
ax.plot(5, 5, marker='o', markersize=10, color='green', label='Zwischenbündel')

# Plot the new optimal bundle
ax.plot(6, 4.5, marker='o', markersize=10, color='red', label='Neues Bündel')

# Add arrows for substitution and income effects
ax.annotate('Substitutionseffekt', xy=(5, 5), xytext=(6, 6),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Einkommenseffekt', xy=(6, 4.5), xytext=(7, 3.5),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add a legend
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("Hier ist eine grafische Darstellung der Slutsky-Zerlegung. Das anfängliche optimale Bündel befindet sich an dem Punkt, an dem die anfängliche Budgetlinie tangential zur höchstmöglichen Indifferenzkurve ist.")
]

#only("2")[
#voiceover("Wenn der Preis des Gutes X sinkt, dreht sich die Budgetlinie nach außen. Der Substitutionseffekt verschiebt den Konsum zum Zwischenbündel auf derselben Indifferenzkurve.")
]

#only("3")[
#voiceover("Der Einkommenseffekt verschiebt dann den Konsum zum neuen optimalen Bündel auf einer höheren Indifferenzkurve, da das reale Einkommen des Konsumenten gestiegen ist.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]

#only("1-")[
- Die Slutsky-Zerlegung trennt den Effekt einer Preisänderung in Substitutions- und Einkommenseffekte
]

#only("2-")[
- Substitutionseffekt: Änderung des Konsums aufgrund der relativen Preisänderung, bei konstanter Nutzenfunktion
]

#only("3-")[
- Einkommenseffekt: Änderung des Konsums aufgrund der gestiegenen Kaufkraft
]

#only("4-")[
- Gesamteffekt = Substitutionseffekt + Einkommenseffekt
]

#only("5-")[
- Grafisch bewegt sich der Substitutionseffekt entlang der anfänglichen Indifferenzkurve, während der Einkommenseffekt zu einer höheren Indifferenzkurve verschiebt
]

#only("1")[
#voiceover("Die wichtigsten Erkenntnisse aus diesem Beispiel sind:")
]

#only("2")[
#voiceover("Der Substitutionseffekt ist die Änderung des Konsums aufgrund der Änderung der relativen Preise, bei konstanter Nutzenfunktion.")
]

#only("3")[
#voiceover("Der Einkommenseffekt ist die Änderung des Konsums aufgrund der gestiegenen Kaufkraft des Konsumenten.")
]

#only("4")[
#voiceover("Der Gesamteffekt der Preisänderung ist die Summe aus Substitutionseffekt und Einkommenseffekt.")
]

#only("5")[
#voiceover("Grafisch wird der Substitutionseffekt durch die Bewegung entlang der anfänglichen Indifferenzkurve dargestellt, während der Einkommenseffekt die Verschiebung zu einer höheren Indifferenzkurve ist.")
]

]