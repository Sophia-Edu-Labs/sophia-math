#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks vs Slutsky Zerlegung]
#v(40pt)
#only("1-")[- Beide zerlegen die Effekte einer Preisänderung 💰]
#v(20pt)
#only("2-")[- Substitutionseffekt 🔄 + Einkommenseffekt 💸]
#only("1")[
#voiceover("Sowohl die Hicks- als auch die Slutsky-Zerlegung zerlegen die Effekte einer Preisänderung in Substitutions- und Einkommenseffekte.")
]
#only("2")[
#voiceover("Der Substitutionseffekt erfasst die Änderung des Konsums aufgrund der Änderung der relativen Preise, während der Einkommenseffekt die Änderung des Konsums aufgrund der Änderung der Kaufkraft erfasst.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks Zerlegung]
#v(40pt)
#only("1-")[- Hält den Nutzen konstant 📈]
#v(20pt)
#only("2-")[- Kompensierte Nachfrage 🛒]
#only("1")[
#voiceover("Die Hicks-Zerlegung hält den Nutzen konstant, wenn die Effekte einer Preisänderung analysiert werden.")
]
#only("2")[
#voiceover("Sie verwendet die kompensierte Nachfrage, die das Einkommen anpasst, um den Konsumenten auf der gleichen Indifferenzkurve zu halten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Zerlegung]
#v(40pt)
#only("1-")[- Hält das Einkommen konstant 💰]
#v(20pt)
#only("2-")[- Unkompensierte Nachfrage 🛍️]
#only("1")[
#voiceover("Die Slutsky-Zerlegung hingegen hält das Einkommen konstant.")
]
#only("2")[
#voiceover("Sie verwendet die unkompensierte Nachfrage, die das Einkommen nicht anpasst und es dem Konsumenten erlaubt, zu einer anderen Indifferenzkurve zu wechseln.")
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

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Initial Budget Line')

# Plot the new budget line after price change
y_new = 20 - 2*x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Plot the indifference curves
x_ic = np.linspace(0, 10, 100)
y_ic1 = 10 / x_ic
y_ic2 = 20 / x_ic
ax.plot(x_ic, y_ic1, color='green', linestyle='--', label='Initial Indifference Curve')
ax.plot(x_ic, y_ic2, color='purple', linestyle='--', label='New Indifference Curve')

# Annotate the initial and new equilibrium points
ax.annotate('Initial Equilibrium', xy=(5, 5), xytext=(6, 6),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('New Equilibrium (Hicks)', xy=(5, 10), xytext=(6, 11),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('New Equilibrium (Slutsky)', xy=(6.67, 6.67), xytext=(7.5, 7.5),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and title
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Hicks vs Slutsky Decomposition')
ax.legend()

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dieses Diagramm zeigt den Unterschied zwischen Hicks- und Slutsky-Zerlegungen. Die blaue Linie ist die anfängliche Budgetbeschränkung, und die rote Linie ist die neue Budgetbeschränkung nach einer Preisänderung. Die grünen und violetten Kurven sind die Indifferenzkurven.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Hicks: Nutzen konstant 📈, kompensierte Nachfrage 🛒]
#v(20pt)
#only("2-")[- Slutsky: Einkommen konstant 💰, unkompensierte Nachfrage 🛍️]
#v(20pt)
#only("3-")[- Unterschiedliche Gleichgewichtspunkte 🎯]
#only("1")[
#voiceover("Zusammenfassend hält die Hicks-Zerlegung den Nutzen konstant und verwendet die kompensierte Nachfrage,")
]
#only("2")[
#voiceover("während die Slutsky-Zerlegung das Einkommen konstant hält und die unkompensierte Nachfrage verwendet.")
]
#only("3")[
#voiceover("Dies führt zu unterschiedlichen neuen Gleichgewichtspunkten nach einer Preisänderung, wie im Diagramm gezeigt.")
]
]