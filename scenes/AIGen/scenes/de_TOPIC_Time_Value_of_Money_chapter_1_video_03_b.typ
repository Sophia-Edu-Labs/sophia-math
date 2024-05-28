#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Barwert]
#v(40pt)
#only("1-")[- Gegeben: Endwert = 100 €, Abzinsungssatz = 5 %, Zeitraum = 1 Jahr]
#v(20pt)
#only("2-")[- Formel: $PV = FV / (1 + r)^n$]
#v(20pt)
#only("3-")[- Berechnung: $PV = 100 / (1 + 0.05)^1$]
#v(20pt)
#only("4-")[- Ergebnis: $PV = 95,24 €$]

#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns dennoch die Lösung Schritt für Schritt durchgehen. Gegeben ist, dass der Endwert 100 Euro beträgt, der Abzinsungssatz 5 % ist und der Zeitraum 1 Jahr.")
]
#only("2")[
#voiceover("Um den Barwert zu finden, verwenden wir die Formel: Barwert ist gleich Endwert geteilt durch Klammer auf 1 plus Abzinsungssatz hoch Anzahl der Perioden.")
]
#only("3")[
#voiceover("Setzen wir unsere Werte ein, erhalten wir: Barwert ist gleich 100 Euro geteilt durch Klammer auf 1 plus 0,05 hoch 1.")
]
#only("4")[
#voiceover("Berechnen wir dies, erhalten wir einen Barwert von 95,24 Euro. Das bedeutet, dass der Erhalt von 100 Euro in einem Jahr bei einem Abzinsungssatz von 5 % dem heutigen Wert von 95,24 Euro entspricht. Gut gemacht!")
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

# Define the data
present_value = 95.24
future_value = 100
discount_rate = 0.05
year = 1

# Create the plot
fig, ax = plt.subplots(figsize=(8, 4))

# Plot the Present Value
ax.bar(0, present_value, width=0.5, color='b', alpha=0.7, label='Present Value')
ax.text(0, present_value + 1, f'€{present_value:.2f}', ha='center', va='bottom')

# Plot the Future Value
ax.bar(year, future_value, width=0.5, color='g', alpha=0.7, label='Future Value')
ax.text(year, future_value + 1, f'€{future_value:.2f}', ha='center', va='bottom')

# Connect PV and FV with an arrow
ax.annotate('', xy=(year, future_value), xytext=(0, present_value),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add discount rate text
ax.text(0.5, (present_value + future_value) / 2, f'Discount Rate: {discount_rate:.0%}',
        ha='center', va='center', rotation=90, color='red')

# Improve the layout
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.set_xticks([0, year])
ax.set_xticklabels(['Today', f'{year} year later'])
ax.set_ylabel('Value (€)')
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine visuelle Darstellung des Barwerts und des Endwerts. Der blaue Balken repräsentiert den Barwert von 95,24 Euro heute, während der grüne Balken den Endwert von 100 Euro nach 1 Jahr darstellt. Der schwarze Pfeil, der sie verbindet, repräsentiert den Abzinsungssatz von 5 %, der verwendet wurde, um den Barwert aus dem Endwert zu berechnen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Der Barwert ist der aktuelle Wert einer zukünftigen Geldsumme 💰]
#v(20pt)
#only("2-")[- Er wird mit der Formel berechnet: $PV = FV / (1 + r)^n$ 📝]
#v(20pt)
#only("3-")[- Höhere Abzinsungssätze und längere Zeiträume führen zu niedrigeren Barwerten ⏳]
#only("1")[
#voiceover("Die wichtigsten Erkenntnisse sind: Der Barwert repräsentiert den aktuellen Wert einer zukünftigen Geldsumme.")
]
#only("2")[
#voiceover("Er wird mit der Formel berechnet: Barwert ist gleich Endwert geteilt durch Klammer auf 1 plus Abzinsungssatz hoch Anzahl der Perioden.")
]
#only("3")[
#voiceover("Höhere Abzinsungssätze und längere Zeiträume führen zu niedrigeren Barwerten. Dies liegt daran, dass die Opportunitätskosten des Wartens auf das Geld mit der Zeit und den Zinssätzen steigen.")
]
]