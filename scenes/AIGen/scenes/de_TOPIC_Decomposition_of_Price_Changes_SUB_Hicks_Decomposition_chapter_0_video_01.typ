#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Zerlegung 🔍]
#v(40pt)
#only("1-")[- Trennt die Wirkung einer Preisänderung in:]
#v(20pt)
#only("2-")[ - Substitutionseffekt 🔄]
#v(10pt)
#only("3-")[ - Einkommenseffekt 💰]
#v(20pt)
#only("4-")[- Hält den Nutzen konstant 📈]

#only("1")[
#voiceover("Die Hicks-Zerlegung ist eine Methode in der Volkswirtschaftslehre, um die Wirkung einer Preisänderung auf das Konsumverhalten zu analysieren. Sie trennt die Gesamtauswirkung in zwei Komponenten:")
]
#only("2")[
#voiceover("Der Substitutionseffekt zeigt, wie sich der Konsum ändert, wenn sich der Preis ändert, wobei der Nutzen konstant bleibt, und")
]
#only("3")[
#voiceover("Der Einkommenseffekt zeigt, wie sich der Konsum aufgrund einer Änderung des realen Einkommens nach Anpassung an den Substitutionseffekt ändert.")
]
#only("4")[
#voiceover("Ein wesentliches Merkmal der Hicks-Zerlegung ist, dass der Nutzen während der gesamten Analyse konstant gehalten wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung 📊]

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

# Plot the initial budget constraint
x = np.linspace(0, 10, 100)
y1 = 10 - 0.5 * x
ax.plot(x, y1, color='blue', label='Initial Budget')

# Plot the new budget constraint
y2 = 20 - 1 * x
ax.plot(x, y2, color='red', label='New Budget')

# Plot the initial indifference curve
x = np.linspace(0, 20, 100)
y = 200 / x
ax.plot(x, y, color='green', label='Initial Indifference Curve')

# Plot the new indifference curve
y_new = 200 / x
ax.plot(x, y_new, color='green', linestyle='--', label='New Indifference Curve')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.legend()

# Show the plot
plt.show()
```, width: 360pt))
]
]
#only("1")[
#voiceover("Hier ist eine grafische Darstellung der Hicks-Zerlegung. Die blaue Linie stellt die ursprüngliche Budgetbeschränkung dar, und die rote Linie ist die neue Budgetbeschränkung nach einer Preisänderung. Die grünen Kurven sind die Indifferenzkurven, die konstante Nutzenniveaus darstellen.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt 🔄]
#v(40pt)
#only("1-")[- Änderung des Konsums aufgrund der Preisänderung]
#v(20pt)
#only("2-")[- Nutzen bleibt konstant]
#v(20pt)
#only("3-")[- Bewegung entlang der Indifferenzkurve]

#only("1")[
#voiceover("Der Substitutionseffekt zeigt, wie sich der Konsum ändert, wenn sich der Preis ändert, wobei der Nutzen konstant bleibt.")
]
#only("2")[
#voiceover("In der Grafik wird dies durch die Bewegung entlang der ursprünglichen Indifferenzkurve dargestellt.")
]
#only("3")[
#voiceover("Der Konsument substituiert weg von dem Gut, das relativ teurer geworden ist, während er das gleiche Zufriedenheitsniveau beibehält.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt 💰]
#v(40pt)
#only("1-")[- Änderung des Konsums aufgrund der Änderung des realen Einkommens]
#v(20pt)
#only("2-")[- Nach Anpassung an den Substitutionseffekt]
#v(20pt)
#only("3-")[- Bewegung zu einer neuen Indifferenzkurve]

#only("1")[
#voiceover("Der Einkommenseffekt zeigt, wie sich der Konsum aufgrund einer Änderung des realen Einkommens nach Anpassung an den Substitutionseffekt ändert.")
]
#only("2")[
#voiceover("In der Grafik wird dies durch die Bewegung von der ursprünglichen Indifferenzkurve zur neuen Indifferenzkurve dargestellt.")
]
#only("3")[
#voiceover("Die Änderung des realen Einkommens ermöglicht es dem Konsumenten, ein anderes Zufriedenheitsniveau zu erreichen, entweder höher oder niedriger, je nachdem, ob das Gut normal oder inferior ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Die Hicks-Zerlegung trennt die Auswirkungen von Preisänderungen]
#v(20pt)
#only("2-")[- Substitutionseffekt: Änderung des Konsums, Nutzen konstant]
#v(20pt)
#only("3-")[- Einkommenseffekt: Änderung des Konsums aufgrund der Änderung des realen Einkommens]
#v(20pt)
#only("4-")[- Hilft, das Konsumverhalten zu analysieren 🛒]

#only("1")[
#voiceover("Zusammenfassend ist die Hicks-Zerlegung ein mächtiges Werkzeug, um die Auswirkungen einer Preisänderung auf das Konsumverhalten zu trennen.")
]
#only("2")[
#voiceover("Der Substitutionseffekt zeigt, wie sich der Konsum ändert, während der Nutzen konstant bleibt,")
]
#only("3")[
#voiceover("während der Einkommenseffekt die Änderung des Konsums aufgrund einer Änderung des realen Einkommens erfasst.")
]
#only("4")[
#voiceover("Durch das Verständnis dieser Effekte können Ökonomen das Konsumverhalten als Reaktion auf Preisänderungen besser analysieren und vorhersagen.")
]
]