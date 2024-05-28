#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
#v(40pt)
#only("1-")[- Trennt den Effekt einer Preisänderung]
#v(20pt)
#only("2-")[- In Substitutions- und Einkommenseffekte]
#only("1")[
#voiceover("Die Slutsky-Zerlegung ist eine Methode in der Volkswirtschaftslehre, die den Effekt einer Preisänderung...")
]
#only("2")[
#voiceover("...in zwei Komponenten trennt: den Substitutionseffekt und den Einkommenseffekt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
#v(40pt)
#only("1-")[- Änderung des Konsums aufgrund relativer Preise 💰]
#v(20pt)
#only("2-")[- Bei konstantem Nutzen 📈]
#only("1")[
#voiceover("Der Substitutionseffekt erfasst die Änderung des Konsums, die sich aus einer Änderung der relativen Preise der Güter ergibt...")
]
#only("2")[
#voiceover("...während der Nutzen, oder die Zufriedenheit des Konsumenten, konstant gehalten wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt]
#v(40pt)
#only("1-")[- Änderung des Konsums aufgrund des realen Einkommens 💸]
#v(20pt)
#only("2-")[- Resultierend aus der Preisänderung 📉]
#only("1")[
#voiceover("Der Einkommenseffekt misst hingegen die Änderung des Konsums, die auf die Änderung des realen Einkommens des Konsumenten zurückzuführen ist...")
]
#only("2")[
#voiceover("...die sich aus der Preisänderung ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
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

# Plot the original budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Original Budget Line')

# Plot the new budget line after price change
y_new = 15 - 1.5*x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Plot the indifference curves
x_ind = np.linspace(0, 10, 100)
y_ind1 = 10 / x_ind
y_ind2 = 20 / x_ind
ax.plot(x_ind, y_ind1, color='green', linestyle='--', label='Indifference Curve 1')
ax.plot(x_ind, y_ind2, color='purple', linestyle='--', label='Indifference Curve 2')

# Annotate the substitution and income effects
ax.annotate('Substitution Effect', xy=(4, 4), xytext=(2, 5),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Income Effect', xy=(6, 2), xytext=(7, 3),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
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
#voiceover("Dieses Diagramm visualisiert die Slutsky-Zerlegung. Die blaue Linie ist die ursprüngliche Budgetbeschränkung, und die rote Linie ist die neue Budgetbeschränkung nach einer Preisänderung. Die grünen und violetten Kurven sind Indifferenzkurven. Die Bewegung entlang der Indifferenzkurve stellt den Substitutionseffekt dar, während der Wechsel zu einer neuen Indifferenzkurve den Einkommenseffekt darstellt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Slutsky-Zerlegung: Trennt den Effekt einer Preisänderung]
#v(20pt)
#only("2-")[- Substitutionseffekt: Änderung aufgrund relativer Preise]
#v(20pt)
#only("3-")[- Einkommenseffekt: Änderung aufgrund des realen Einkommens]
#only("1")[
#voiceover("Zusammenfassend ist die Slutsky-Zerlegung ein Werkzeug, das den Effekt einer Preisänderung...")
]
#only("2")[
#voiceover("...in den Substitutionseffekt trennt, der die Änderung des Konsums aufgrund relativer Preise ist...")
]
#only("3")[
#voiceover("...und den Einkommenseffekt, der die Änderung des Konsums aufgrund des realen Einkommens ist.")
]
]