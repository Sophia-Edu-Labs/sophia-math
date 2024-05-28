#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Gesamteffekt einer Preisänderung]
#v(40pt)
#only("1-")[- Zerlegt in zwei Teile 🔍]
#v(20pt)
#only("2-")[1. Substitutionseffekt 🔄]
#v(10pt)
#only("3-")[2. Einkommenseffekt 💰]
#only("1")[
#voiceover("Der Gesamteffekt einer Preisänderung auf die nachgefragte Menge eines Gutes kann in zwei Teile zerlegt werden:")
]
#only("2")[
#voiceover("Der Substitutionseffekt, der die Änderung des Konsums aufgrund einer Änderung der relativen Preise der Güter darstellt, wobei der Nutzen konstant bleibt.")
]
#only("3")[
#voiceover("Und der Einkommenseffekt, der die Änderung des Konsums aufgrund einer Änderung der Kaufkraft des Verbrauchers oder des realen Einkommens darstellt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Mathematische Darstellung]
#v(40pt)
#only("1-")[Gesamteffekt $=$ Substitutionseffekt $+$ Einkommenseffekt]
#v(20pt)
#only("2-")[$ Δ Q = Δ Q_s + Δ Q_i $]
#only("1")[
#voiceover("Mathematisch ist der Gesamteffekt einer Preisänderung gleich der Summe aus Substitutionseffekt und Einkommenseffekt.")
]
#only("2")[
#voiceover("Wir können dies ausdrücken als Delta Q gleich Delta Q_s plus Delta Q_i, wobei Delta Q die gesamte Änderung der nachgefragten Menge darstellt, Delta Q_s die Änderung aufgrund des Substitutionseffekts und Delta Q_i die Änderung aufgrund des Einkommenseffekts.")
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

# Create a plot
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Initial Budget Line')

# Plot the new budget line after the price change
y_new = 12 - 1.2 * x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Plot the indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 20 / x
ax.plot(x, y1, color='green', linestyle='--', label='Initial Indifference Curve')
ax.plot(x, y2, color='purple', linestyle='--', label='New Indifference Curve')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Slutsky Decomposition')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Wir können die Slutsky-Zerlegung auch grafisch darstellen, indem wir Indifferenzkurven und Budgetbeschränkungen verwenden. In diesem Diagramm stellt die blaue Linie die anfängliche Budgetbeschränkung dar, und die rote Linie stellt die neue Budgetbeschränkung nach einer Preisänderung dar. Die grüne und die violette gestrichelte Linie stellen die Indifferenzkurven des Verbrauchers dar.")
]
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Gesamteffekt = Substitutionseffekt + Einkommenseffekt 🎯]
#v(20pt)
#only("2-")[- Substitutionseffekt: Änderung der relativen Preise 🔄]
#v(10pt)
#only("3-")[- Einkommenseffekt: Änderung der Kaufkraft 💰]
#v(20pt)
#only("4-")[- Mathematisch: $ Δ Q = Δ Q_s + Δ Q_i $ 📏]
#v(10pt)
#only("5-")[- Grafisch: Indifferenzkurven & Budgetbeschränkungen 📈]
#only("1")[
#voiceover("Zusammenfassend ist der Gesamteffekt einer Preisänderung die Summe aus Substitutionseffekt und Einkommenseffekt.")
]
#only("2")[
#voiceover("Der Substitutionseffekt stellt die Änderung des Konsums aufgrund einer Änderung der relativen Preise dar,")
]
#only("3")[
#voiceover("während der Einkommenseffekt die Änderung des Konsums aufgrund einer Änderung der Kaufkraft des Verbrauchers darstellt.")
]
#only("4")[
#voiceover("Dies kann mathematisch ausgedrückt werden als Delta Q gleich Delta Q_s plus Delta Q_i,")
]
#only("5")[
#voiceover("und grafisch unter Verwendung von Indifferenzkurven und Budgetbeschränkungen.")
]
]