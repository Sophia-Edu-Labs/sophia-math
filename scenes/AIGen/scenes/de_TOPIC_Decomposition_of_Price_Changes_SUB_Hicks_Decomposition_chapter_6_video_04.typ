#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Dekomposition Zusammenfassung 🎓]
#v(40pt)
#only("1-")[
- Trennt die Wirkung einer Preisänderung in:
  - Substitutionseffekt 🔄
  - Einkommenseffekt 💰
]
#only("1")[
#voiceover("Lass uns rekapitulieren, was wir über die Hicks-Dekomposition gelernt haben. Die Hicks-Dekomposition trennt die Wirkung einer Preisänderung in zwei Teile: den Substitutionseffekt und den Einkommenseffekt.")
]
#only("2-")[
- Hält den Nutzen konstant 📈
]
#only("2")[
#voiceover("Ein wesentliches Merkmal der Hicks-Dekomposition ist, dass sie den Nutzen konstant hält, wenn die Auswirkungen einer Preisänderung analysiert werden.")
]
#only("3-")[
- Nützlich zur Analyse des Konsumentenverhaltens 🛍️
]
#only("3")[
#voiceover("Die Hicks-Dekomposition ist ein mächtiges Werkzeug zur Analyse des Konsumentenverhaltens, da sie uns ermöglicht zu verstehen, wie Konsumenten ihre Konsumgewohnheiten als Reaktion auf Preisänderungen anpassen.")
]
#only("4-")[
- Praktische Anwendungen in der Wirtschaftsanalyse 📊
]
#only("4")[
#voiceover("Diese Dekomposition hat viele praktische Anwendungen in der Wirtschaftsanalyse, wie zum Beispiel die Bewertung der Auswirkungen von Steuern oder Subventionen auf die Konsumentenentscheidungen.")
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

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Set the limits for x and y axes
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Label the axes
ax.set_xlabel('Gut X')
ax.set_ylabel('Gut Y')

# Draw the initial budget line
x = np.linspace(0, 10, 100)
y1 = 10 - 0.8 * x
ax.plot(x, y1, color='blue', linestyle='-', label='Ursprüngliche Budgetlinie')

# Draw the new budget line after price change
y2 = 10 - 0.5 * x
ax.plot(x, y2, color='red', linestyle='-', label='Neue Budgetlinie')

# Draw indifference curves
x = np.linspace(0.1, 10, 100)
y1 = 50 / x
y2 = 72 / x
ax.plot(x, y1, color='green', linestyle='--', label='Ursprüngliche Indifferenzkurve')
ax.plot(x, y2, color='purple', linestyle='--', label='Neue Indifferenzkurve')

# Mark the initial optimal point
ax.plot(6.25, 6.25, marker='o', markersize=8, color='blue', label='Ursprünglicher Optimalpunkt')

# Mark the new optimal point after substitution effect
ax.plot(8, 4.5, marker='o', markersize=8, color='purple', label='Optimalpunkt nach Substitutionseffekt')

# Mark the final optimal point after income effect
ax.plot(7.2, 5.76, marker='o', markersize=8, color='red', label='Endgültiger Optimalpunkt')

# Add a legend
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Hier ist eine grafische Darstellung der Hicks-Dekomposition. Die blaue Linie ist die ursprüngliche Budgetbeschränkung, und die rote Linie ist die neue Budgetbeschränkung nach einer Preisänderung. Die grünen und violetten Kurven sind Indifferenzkurven. Der blaue Punkt ist der ursprüngliche optimale Konsumpunkt. Der violette Punkt zeigt den optimalen Punkt nach dem Substitutionseffekt, und der rote Punkt ist der endgültige optimale Punkt nach dem Einkommenseffekt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[
- Hicks-Dekomposition: Ein mächtiges Werkzeug 🛠️
]
#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass die Hicks-Dekomposition ein mächtiges Werkzeug im Werkzeugkasten eines Ökonomen ist.")
]
#only("2-")[
- Trennt Substitutions- und Einkommenseffekte 🔍
]
#only("2")[
#voiceover("Sie ermöglicht es uns, die Substitutions- und Einkommenseffekte einer Preisänderung zu trennen und wertvolle Einblicke in das Konsumentenverhalten zu gewinnen.")
]
#only("3-")[
- Hält den Nutzen konstant 📊
]
#only("3")[
#voiceover("Durch das Halten des Nutzens konstant isoliert die Hicks-Dekomposition den reinen Substitutionseffekt, bevor der Einkommenseffekt berücksichtigt wird.")
]
#only("4-")[
- Praktische Anwendungen 🌍
]
#only("4")[
#voiceover("Diese Dekomposition hat viele praktische Anwendungen in der realen Wirtschaftsanalyse, von der Steuerpolitik bis zur Wohlfahrtsanalyse.")
]
#only("5-")[
- Wesentlich zum Verständnis des Konsumentenverhaltens 🎓
]
#only("5")[
#voiceover("Das Verständnis der Hicks-Dekomposition ist unerlässlich für jeden Ökonomen, der das Konsumentenverhalten in Reaktion auf sich ändernde Marktbedingungen analysieren und vorhersagen möchte.")
]
]