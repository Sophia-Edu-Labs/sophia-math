#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
#v(40pt)
Welche der folgenden Optionen stellt die mathematische Form der Slutsky-Zerlegung dar?
#v(40pt)
#only("-1")[a) Gesamteffekt = Substitutionseffekt - Einkommenseffekt]#only("2-")[#text(fill:red)[a) Gesamteffekt = Substitutionseffekt - Einkommenseffekt]]
#v(10pt)
#only("-2")[b) Gesamteffekt = Substitutionseffekt + Einkommenseffekt]#only("3-")[#text(fill:green)[b) Gesamteffekt = Substitutionseffekt + Einkommenseffekt]]
#v(10pt)
#only("-3")[c) Gesamteffekt = Einkommenseffekt - Substitutionseffekt]#only("4-")[#text(fill:red)[c) Gesamteffekt = Einkommenseffekt - Substitutionseffekt]]
#v(10pt)
#only("-4")[d) Gesamteffekt = Einkommenseffekt + Nutzen-Effekt]#only("5-")[#text(fill:red)[d) Gesamteffekt = Einkommenseffekt + Nutzen-Effekt]]
#v(40pt)

#only("1")[#voiceover("Leider falsch. Hier ist das Video zur Erklärung.")]
#only("2")[#voiceover("Option a) ist falsch. Bei der Slutsky-Zerlegung werden der Substitutions- und Einkommenseffekt addiert, nicht subtrahiert.")]
#only("3")[#voiceover("Option b) ist korrekt. Die Slutsky-Zerlegung besagt, dass der Gesamteffekt einer Preisänderung die Summe aus Substitutions- und Einkommenseffekt ist.")]
#only("4")[#voiceover("Option c) ist falsch. Sie vertauscht die Reihenfolge der Effekte im Vergleich zur korrekten Formel.")]
#only("5")[#voiceover("Option d) ist ebenfalls falsch. Sie enthält den Nutzen-Effekt, der nicht Teil der Slutsky-Zerlegung ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegungsformel]
#v(40pt)
#only("1-")[Die korrekte mathematische Form ist:]
#v(20pt)
#only("2-")[#text(size: 24pt)[$ "Gesamteffekt" = "Substitutionseffekt" + "Einkommenseffekt" $]]
#v(40pt)
#only("3-")[Genauer:]
#v(20pt)
#only("4-")[#text(size: 24pt)[$ x_1 - x_0 = (x_s - x_0) + (x_1 - x_s) $]]
#v(40pt)
#only("5-")[Dabei gilt:]
- $x_0$ ist die anfänglich nachgefragte Menge
- $x_1$ ist die neue nachgefragte Menge
- $x_s$ ist die nachgefragte Menge aufgrund des Substitutionseffekts

#only("1")[#voiceover("Schauen wir uns die korrekte mathematische Form der Slutsky-Zerlegung an.")]
#only("2")[#voiceover("In Worten besagt sie, dass der Gesamteffekt gleich dem Substitutionseffekt plus dem Einkommenseffekt ist.")]
#only("3")[#voiceover("Wir können dies formeller mit mathematischer Notation ausdrücken.")]
#only("4")[#voiceover("x_1 minus x_0 ist gleich offene Klammer x_s minus x_0 schließende Klammer plus offene Klammer x_1 minus x_s schließende Klammer.")]
#only("5")[#voiceover("Hierbei ist x_0 die anfänglich nachgefragte Menge, x_1 die neue nachgefragte Menge nach der Preisänderung und x_s die nachgefragte Menge aufgrund des Substitutionseffekts, wobei der Nutzen konstant gehalten wird.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Slutsky-Zerlegung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, 'b', label='Anfängliche Budgetgerade')

# Plot the new budget line after price change
y_new = 12.5 - 1.25*x
ax.plot(x, y_new, 'r', label='Neue Budgetgerade')

# Plot the intermediate budget line for substitution effect
y_int = 10 - 1.25*x
ax.plot(x, y_int, 'g--', label='Zwischenbudgetgerade')

# Plot the indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 20 / x
ax.plot(x, y1, 'k--', alpha=0.5)
ax.plot(x, y2, 'k--', alpha=0.5)

# Plot the initial optimal point
ax.scatter(4, 6, color='blue', label='Anfängliches Optimum')

# Plot the final optimal point
ax.scatter(6, 5, color='red', label='Neues Optimum')

# Plot the intermediate optimal point for substitution effect
ax.scatter(5, 5, color='green', label='Zwischenoptimum')

# Add arrows for income and substitution effects
ax.annotate('Substitutionseffekt', xy=(5, 5), xytext=(5.5, 6), 
            arrowprops=dict(facecolor='green', shrink=0.05))
ax.annotate('Einkommenseffekt', xy=(6, 5), xytext=(6.5, 4), 
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and legend
ax.set_xlabel('Gut 1')
ax.set_ylabel('Gut 2')
ax.set_title('Slutsky-Zerlegung')
ax.legend()

# Display the plot
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Dieses Diagramm visualisiert die Slutsky-Zerlegung. Der blaue Punkt stellt das anfängliche Optimum dar, der rote Punkt das neue Optimum nach einer Preisänderung und der grüne Punkt ein Zwischenoptimum, das nur den Substitutionseffekt berücksichtigt.")]
#only("2")[#voiceover("Die Bewegung vom blauen zum grünen Punkt stellt den Substitutionseffekt dar - die Änderung im Konsum aufgrund der Änderung der relativen Preise, wobei der Nutzen konstant gehalten wird.")]
#only("3")[#voiceover("Die Bewegung vom grünen zum roten Punkt stellt den Einkommenseffekt dar - die zusätzliche Änderung im Konsum aufgrund der Änderung der Kaufkraft.")]
#only("4")[#voiceover("Zusammen ergeben der Substitutionseffekt (in Grün) und der Einkommenseffekt (in Schwarz) den Gesamteffekt der Preisänderung auf die nachgefragte Menge der Güter.")]
]