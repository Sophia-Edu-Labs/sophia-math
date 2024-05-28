#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
#v(40pt)
#only("1-")[- Zeigt, wie sich der Konsum ändert, wenn sich der Preis ändert 💸]
#v(20pt)
#only("2-")[- Hält den Nutzen konstant 😊]
#v(20pt)
#only("3-")[- Isoliert die Wirkung der Preisänderung auf den Konsum]
#only("1")[
#voiceover("Der Substitutionseffekt ist ein Schlüsselkonzept, um zu verstehen, wie Konsumenten auf Preisänderungen reagieren. Er zeigt, wie sich der Konsum eines Gutes ändert, wenn sich der Preis dieses Gutes ändert, während das Nutzenniveau des Konsumenten konstant gehalten wird.")
]
#only("2")[
#voiceover("Der zentrale Gedanke hierbei ist, dass wir die Wirkung der Preisänderung isolieren, indem wir den Nutzen konstant halten. Das bedeutet, wir betrachten, wie der Konsument seinen Konsum anpassen würde, wenn er genug kompensiert würde, um das gleiche Zufriedenheitsniveau wie vor der Preisänderung zu halten.")
]
#only("3")[
#voiceover("Indem der Nutzen konstant gehalten wird, ermöglicht uns der Substitutionseffekt, die reine Wirkung der Preisänderung auf den Konsum zu sehen, getrennt von Änderungen der Kaufkraft oder der allgemeinen Zufriedenheit des Konsumenten.")
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

# Set the limits for x and y axes
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Draw the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - 0.5 * x
ax.plot(x, y, color='blue', linewidth=2, label='Initial Budget Line')

# Draw the new budget line after price change
y_new = 10 - 0.25 * x
ax.plot(x, y_new, color='red', linewidth=2, label='New Budget Line')

# Draw the initial indifference curve
x_ic = np.linspace(0, 10, 100)
y_ic = 10 / np.sqrt(x_ic)
ax.plot(x_ic, y_ic, color='green', linewidth=2, label='Indifference Curve')

# Highlight the initial optimal point
ax.scatter(4, 6, color='blue', s=100, label='Initial Optimal Point')

# Highlight the new optimal point after substitution effect
ax.scatter(6, 4, color='red', s=100, label='New Optimal Point')

# Draw an arrow to show the substitution effect
ax.annotate('', xy=(6, 4), xytext=(4, 6), 
            arrowprops=dict(facecolor='black', shrink=0.05, width=1, headwidth=8))
ax.text(4.8, 5.2, 'Substitution Effect', fontsize=12, rotation=-25)

# Add labels and legend
ax.set_xlabel('Good 1', fontsize=14)
ax.set_ylabel('Good 2', fontsize=14)
ax.legend(fontsize=12, loc='upper right')

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dieses Diagramm veranschaulicht den Substitutionseffekt. Die blaue Linie ist die anfängliche Budgetbeschränkung des Konsumenten, und die grüne Kurve ist seine Indifferenzkurve, die Kombinationen von Gütern zeigt, die das gleiche Zufriedenheitsniveau bieten. Der Konsument wählt zunächst den blauen Punkt, an dem seine Budgetlinie tangential zur Indifferenzkurve verläuft.")
]
#only("2")[
#voiceover("Angenommen, der Preis von Gut 1 sinkt, wodurch sich die Budgetlinie nach außen zur roten Linie dreht. Wenn wir das Zufriedenheitsniveau des Konsumenten konstant halten wollten, müssten wir die Budgetlinie nach innen verschieben, bis sie gerade tangential zur ursprünglichen Indifferenzkurve ist. Dies ist der Substitutionseffekt - der Konsument bewegt sich entlang derselben Indifferenzkurve zum roten Punkt und substituiert in Richtung des Gutes, das relativ günstiger geworden ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Substitutionseffekt: Änderung des Konsums aufgrund einer Preisänderung, bei konstantem Nutzen 📉]
#v(20pt)
#only("2-")[- Isoliert die Wirkung der Preisänderung auf den Konsum 🔍]
#v(20pt)
#only("3-")[- Konsument substituiert in Richtung des relativ günstigeren Gutes 🔄]
#only("1")[
#voiceover("Zusammenfassend ist der Substitutionseffekt die Änderung des Konsums eines Gutes durch einen Konsumenten, wenn sich der Preis dieses Gutes ändert, während das Nutzenniveau des Konsumenten konstant bleibt.")
]
#only("2")[
#voiceover("Durch die Isolierung der Wirkung der Preisänderung hilft uns der Substitutionseffekt zu verstehen, wie Konsumenten auf Preisänderungen reagieren, getrennt von Änderungen ihrer allgemeinen Kaufkraft.")
]
#only("3")[
#voiceover("Wenn der Preis eines Gutes sinkt, führt der Substitutionseffekt dazu, dass der Konsument in Richtung dieses Gutes substituiert, mehr davon kauft und weniger von anderen Gütern, während er das gleiche Zufriedenheitsniveau beibehält.")
]
]