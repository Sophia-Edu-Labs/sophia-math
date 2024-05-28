#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
#v(40pt)
#only("1-")[- Änderung des Konsums aufgrund von Änderungen der relativen Preise 📈]
#only("2-")[- Bei konstanter Nutzenfunktion 🧘]
#only("1")[
#voiceover("Nicht ganz richtig. Lass uns das Konzept des Substitutionseffekts genauer betrachten.")
]
#only("2")[
#voiceover("Der Schlüsselpunkt des Substitutionseffekts ist, dass er die Änderung des Konsums betrachtet, während der Nutzen des Konsumenten, also die Zufriedenheit, konstant gehalten wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Angenommen, der Preis für Äpfel 🍎 sinkt im Vergleich zum Preis für Orangen 🍊.]
#only("2-")[Der Substitutionseffekt würde erfassen, wie viele Äpfel der Konsument mehr kaufen würde und wie viele Orangen weniger, 🛒]
#only("3-")[während das gleiche Zufriedenheitsniveau beibehalten wird. 😊]
#only("1")[
#voiceover("Betrachten wir ein Beispiel. Angenommen, der Preis für Äpfel sinkt im Vergleich zum Preis für Orangen.")
]
#only("2")[
#voiceover("Der Substitutionseffekt würde erfassen, wie viele Äpfel der Konsument mehr kaufen würde und wie viele Orangen weniger.")
]
#only("3")[
#voiceover("während das gleiche Zufriedenheitsniveau beibehalten wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the initial budget constraint
x = np.linspace(0, 10, 100)
y1 = 10 - x
ax.plot(x, y1, color='blue', label='Initial Budget')

# Plot the new budget constraint
y2 = 15 - 1.5*x
ax.plot(x, y2, color='red', label='New Budget')

# Plot the initial optimal choice
ax.plot(5, 5, marker='o', markersize=10, color='blue', label='Initial Choice')

# Plot the new optimal choice
ax.plot(6, 6, marker='o', markersize=10, color='red', label='New Choice')

# Plot the indifference curve
x = np.linspace(0, 10, 100)
y = 25 / x
ax.plot(x, y, color='green', label='Indifference Curve')

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
ax.set_title('Substitution Effect')
ax.legend()

# Display the plot
plt.show()
```,
width: 360pt),
)
]
]
// Eine grafische Darstellung des Substitutionseffekts wird ab Folie 1 gezeigt
#only("1")[
#voiceover("Hier ist eine grafische Darstellung des Substitutionseffekts. Die blaue Linie stellt die anfängliche Budgetbeschränkung dar, und der blaue Punkt die anfängliche optimale Wahl.")
]
#only("2")[
#voiceover("Wenn der Preis von Gut 1 sinkt, dreht sich die Budgetbeschränkung nach außen zur roten Linie. Der Konsument wählt nun den roten Punkt, der auf der gleichen Indifferenzkurve (in grün) wie die anfängliche Wahl liegt.")
]
#only("3")[
#voiceover("Die Bewegung vom blauen Punkt zum roten Punkt stellt den Substitutionseffekt dar - die Änderung des Konsums aufgrund der Änderung der relativen Preise, während das gleiche Nutzenniveau beibehalten wird.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Der Substitutionseffekt wird durch Änderungen der relativen Preise angetrieben 💰]
// Die erste wichtige Erkenntnis wird ab Folie 1 gezeigt
#only("2-")[- Er erfasst Änderungen im Konsum bei konstantem Nutzen 📊]
// Die zweite wichtige Erkenntnis wird ab Folie 2 gezeigt
#only("3-")[- Er ist ein wichtiger Bestandteil, um zu verstehen, wie Konsumenten auf Preisänderungen reagieren 🤔]
// Die dritte wichtige Erkenntnis wird ab Folie 3 gezeigt
#only("1")[
#voiceover("Zusammenfassend wird der Substitutionseffekt durch Änderungen der relativen Preise angetrieben.")
]
#only("2")[
#voiceover("Er erfasst Änderungen im Konsum bei konstantem Nutzen.")
]
#only("3")[
#voiceover("Das Verständnis des Substitutionseffekts ist entscheidend, um zu analysieren, wie Konsumenten auf Preisänderungen reagieren.")
]
]