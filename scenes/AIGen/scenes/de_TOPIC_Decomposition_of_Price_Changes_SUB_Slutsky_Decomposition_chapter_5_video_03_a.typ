#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
#voiceover("Das ist richtig, großartige Arbeit! Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Grafische Darstellung]

#v(40pt)

#only("2-")[- Preisrückgang von Gut X 📉]
// Der Preisrückgang wird ab Folie 2 gezeigt

#only("2")[
#voiceover("Wir betrachten einen Rückgang des Preises von Gut X.")
]

]

#slide()[

#only("1")[
#voiceover("Dies kann grafisch mit Hilfe von Indifferenzkurven und Budgetbeschränkungen dargestellt werden. Lass uns sehen, wie.")
]

#text(size: 30pt, weight: "bold")[Indifferenzkurven und Budgetbeschränkungen]

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

# Plot indifference curves
x = np.linspace(0, 10, 100)
for i in range(1, 4):
    y = 10 / (i * x)
    ax.plot(x, y, color='blue', linestyle='-', label=f'Indifference Curve {i}')

# Plot initial budget constraint
x = np.linspace(0, 10, 100)
y = 10 - 2 * x
ax.plot(x, y, color='red', linestyle='-', label='Initial Budget Constraint')

# Plot new budget constraint
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='green', linestyle='-', label='New Budget Constraint')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Indifference Curves and Budget Constraints')
ax.legend()

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// Die Indifferenzkurven und Budgetbeschränkungen werden mit Matplotlib visualisiert

#only("1")[
#voiceover("Hier repräsentieren die blauen Kurven die Indifferenzkurven und die rote Linie die anfängliche Budgetbeschränkung.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Substitutionseffekt]

#v(40pt)

#only("1-")[- Budgetbeschränkung schwenkt nach außen 🔄]
// Das Schwenken der Budgetbeschränkung wird ab Folie 1 gezeigt

#only("2-")[- Konsum bewegt sich entlang der anfänglichen Indifferenzkurve ➡]
// Die Bewegung entlang der Indifferenzkurve wird ab Folie 2 gezeigt

#only("1")[
#voiceover("Wenn der Preis von Gut X sinkt, schwenkt die Budgetbeschränkung nach außen, wie durch die grüne Linie gezeigt.")
]

#only("2")[
#voiceover("Der Substitutionseffekt ist die Bewegung entlang der anfänglichen Indifferenzkurve zu einem neuen Tangentialpunkt mit der neuen Budgetbeschränkung.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Einkommenseffekt]

#v(40pt)

#only("1-")[- Reales Einkommen steigt 💰]
// Der Anstieg des realen Einkommens wird ab Folie 1 gezeigt

#only("2-")[- Verschiebung zu einer höheren Indifferenzkurve ⬆]
// Die Verschiebung zu einer höheren Indifferenzkurve wird ab Folie 2 gezeigt

#only("1")[
#voiceover("Der Preisrückgang erhöht auch das reale Einkommen des Verbrauchers.")
]

#only("2")[
#voiceover("Dies ermöglicht es dem Verbraucher, zu einer höheren Indifferenzkurve zu wechseln, was ein höheres Nutzenniveau darstellt.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Preisrückgang: Budgetbeschränkung schwenkt nach außen 🔄]
// Das Schwenken der Budgetbeschränkung wird ab Folie 1 gezeigt

#only("2-")[- Substitutionseffekt: Bewegung entlang der Indifferenzkurve ➡]
// Der Substitutionseffekt wird ab Folie 2 gezeigt

#only("3-")[- Einkommenseffekt: Verschiebung zu höherer Indifferenzkurve ⬆]
// Der Einkommenseffekt wird ab Folie 3 gezeigt

#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass ein Rückgang des Preises von Gut X durch ein nach außen schwenken der Budgetbeschränkung dargestellt wird.")
]

#only("2")[
#voiceover("Der Substitutionseffekt ist die Bewegung entlang der anfänglichen Indifferenzkurve zu einem neuen Tangentialpunkt.")
]

#only("3")[
#voiceover("Der Einkommenseffekt ist die Verschiebung zu einer höheren Indifferenzkurve aufgrund des Anstiegs des realen Einkommens.")
]

]