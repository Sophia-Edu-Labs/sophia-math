#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Mathematische Darstellung]
#v(40pt)
#only("1-")[Gesamteffekt = Substitutionseffekt + Einkommenseffekt]
#only("1")[
#voiceover("Die Slutsky-Zerlegung kann mathematisch dargestellt werden als: Der Gesamteffekt einer Preisänderung ist gleich dem Substitutionseffekt plus dem Einkommenseffekt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Notation]
#v(40pt)
#only("1-")[Sei:]
#v(20pt)
#only("2-")[- $x_1$ = neue nachgefragte Menge]
#v(10pt)
#only("3-")[- $x_0$ = anfängliche nachgefragte Menge]
#v(10pt)
#only("4-")[- $x_s$ = nachgefragte Menge aufgrund des Substitutionseffekts]
#only("1")[
#voiceover("Lass uns einige Notationen einführen.")
]
#only("2")[
#voiceover("x sub 1 steht für die neue nachgefragte Menge nach der Preisänderung.")
]
#only("3")[
#voiceover("x sub 0 steht für die anfängliche nachgefragte Menge vor der Preisänderung.")
]
#only("4")[
#voiceover("Und x sub s steht für die nachgefragte Menge aufgrund des Substitutionseffekts allein.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Gleichung]
#v(40pt)
#only("1-")[$ x_1 - x_0 = (x_s - x_0) + (x_1 - x_s) $]
#v(20pt)
#only("2-")[Gesamteffekt = Substitutionseffekt + Einkommenseffekt]
#only("1")[
#voiceover("Mit dieser Notation können wir die Slutsky-Gleichung schreiben als: x sub 1 minus x sub 0 ist gleich Klammer auf x sub s minus x sub 0 Klammer zu plus Klammer auf x sub 1 minus x sub s Klammer zu.")
]
#only("2")[
#voiceover("Diese Gleichung zeigt, dass der Gesamteffekt einer Preisänderung, der die Differenz zwischen der neuen und der anfänglichen nachgefragten Menge ist, in den Substitutionseffekt, der die Differenz zwischen der aufgrund der Substitution nachgefragten Menge und der anfänglichen Menge ist, und den Einkommenseffekt, der die Differenz zwischen der neuen Menge und der aufgrund der Substitution nachgefragten Menge ist, zerlegt werden kann.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
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

# Draw arrows for each effect
ax.arrow(2, 2, 4, 0, head_width=0.3, head_length=0.5, fc='b', ec='b', label='Substitution Effect')
ax.arrow(6, 2, 2, 2, head_width=0.3, head_length=0.5, fc='g', ec='g', label='Income Effect')
ax.arrow(2, 2, 6, 2, head_width=0.3, head_length=0.5, fc='r', ec='r', label='Total Effect')

# Add labels for each point
ax.text(1.5, 1.5, r'$x_0$', fontsize=12)
ax.text(5.5, 1.5, r'$x_s$', fontsize=12)
ax.text(7.5, 4.5, r'$x_1$', fontsize=12)

# Add a legend
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Dieses Diagramm visualisiert die Zerlegung. Der blaue Pfeil stellt den Substitutionseffekt dar, der sich von der anfänglichen Menge x sub 0 zur Menge aufgrund der Substitution x sub s bewegt. Der grüne Pfeil stellt den Einkommenseffekt dar, der sich von x sub s zur neuen Menge x sub 1 bewegt. Der rote Pfeil stellt den Gesamteffekt dar, die Summe aus Substitutions- und Einkommenseffekt, der sich direkt von x sub 0 zu x sub 1 bewegt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🔍]
#v(40pt)
#only("1-")[- Slutsky-Zerlegung: Gesamteffekt = Substitutionseffekt + Einkommenseffekt]
#v(20pt)
#only("2-")[- Notation: $x_1$, $x_0$, $x_s$]
#v(20pt)
#only("3-")[- Slutsky-Gleichung: $ x_1 - x_0 = (x_s - x_0) + (x_1 - x_s) $]
#only("1")[
#voiceover("Zusammenfassend besagt die Slutsky-Zerlegung, dass der Gesamteffekt einer Preisänderung gleich dem Substitutionseffekt plus dem Einkommenseffekt ist.")
]
#only("2")[
#voiceover("Wir verwenden die Notation x sub 1 für die neue Menge, x sub 0 für die anfängliche Menge und x sub s für die Menge aufgrund der Substitution.")
]
#only("3")[
#voiceover("Die Slutsky-Gleichung stellt diese Zerlegung mathematisch dar und zeigt, dass die Differenz zwischen der neuen und der anfänglichen Menge gleich dem Substitutionseffekt plus dem Einkommenseffekt ist.")
]
]