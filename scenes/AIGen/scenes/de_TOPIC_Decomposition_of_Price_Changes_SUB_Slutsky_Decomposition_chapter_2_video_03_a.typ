#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt]
#v(40pt)
#align(center)[
#only("1-")[Der Preis des Gutes X sinkt von \$10 auf \$8]
#v(20pt)
#only("2-")[Das reale Einkommen des Verbrauchers steigt]
#v(20pt)
#only("3-")[Die nachgefragte Menge des Gutes X steigt von 7 auf 9 Einheiten]
]
#only("1")[
#voiceover("Gut gemacht! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Es wird angegeben, dass der Preis des Gutes X von 10 Dollar auf 8 Dollar sinkt.")
]
#only("2")[
#voiceover("Dieser Preisrückgang führt zu einem Anstieg des realen Einkommens des Verbrauchers, wodurch er mehr von allen Gütern kaufen kann.")
]
#only("3")[
#voiceover("Infolgedessen steigt die nachgefragte Menge des Gutes X von 7 Einheiten auf 9 Einheiten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[- Der Einkommenseffekt ist die Änderung der nachgefragten Menge aufgrund der Änderung des realen Einkommens 💰]
#v(20pt)
#only("2-")[- Anfangs nachgefragte Menge bei einem Preis von \$10: 7 Einheiten]
#v(20pt)
#only("3-")[- Endgültig nachgefragte Menge bei einem Preis von \$8: 9 Einheiten]
#v(20pt)
#only("4-")[- Einkommenseffekt = Endgültige Menge - Anfangsmenge]
#v(20pt)
#only("5-")[- Einkommenseffekt = 9 - 7 = 2 Einheiten 📈]
#only("1")[
#voiceover("Der Einkommenseffekt ist die Änderung der nachgefragten Menge, die auf die Änderung des realen Einkommens des Verbrauchers zurückzuführen ist.")
]
#only("2")[
#voiceover("Wir wissen, dass die anfänglich nachgefragte Menge bei einem Preis von 10 Dollar 7 Einheiten beträgt.")
]
#only("3")[
#voiceover("Und die endgültig nachgefragte Menge bei einem Preis von 8 Dollar beträgt 9 Einheiten.")
]
#only("4")[
#voiceover("Um den Einkommenseffekt zu berechnen, subtrahieren wir die Anfangsmenge von der Endmenge.")
]
#only("5")[
#voiceover("Der Einkommenseffekt beträgt also 9 minus 7, was uns 2 Einheiten ergibt. Das bedeutet, dass der Anstieg des realen Einkommens des Verbrauchers zu einer Erhöhung der nachgefragten Menge des Gutes X um 2 Einheiten geführt hat.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Set up the figure
fig, ax = plt.subplots(figsize=(8, 6))

# Define the data
price = [10, 8]
quantity = [7, 9]

# Create the bar chart
ax.bar(price, quantity, width=1.5, align='center', color=['blue', 'green'], alpha=0.7)

# Add labels and title
ax.set_xlabel('Preis (\$)', fontsize=14)
ax.set_ylabel('Nachgefragte Menge', fontsize=14)
ax.set_title('Einkommenseffekt auf die nachgefragte Menge', fontsize=16)
ax.set_xticks(price)
ax.set_xticklabels(['Anfang (\$10)', 'Ende (\$8)'])

# Add value labels on top of the bars
for i, v in enumerate(quantity):
    ax.text(price[i], v + 0.1, str(v), color='black', fontweight='bold', ha='center', fontsize=12)

# Highlight the income effect
ax.annotate('Einkommenseffekt = 2 Einheiten', xy=(9, 8), xytext=(9, 8.5),
            arrowprops=dict(facecolor='black', shrink=0.05), fontsize=12, ha='center')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine visuelle Darstellung des Einkommenseffekts. Der blaue Balken zeigt die anfänglich nachgefragte Menge bei einem Preis von 10 Dollar, die 7 Einheiten beträgt. Der grüne Balken zeigt die endgültig nachgefragte Menge bei einem Preis von 8 Dollar, die 9 Einheiten beträgt. Der Unterschied zwischen diesen beiden Mengen, der durch den Pfeil angezeigt wird, ist der Einkommenseffekt von 2 Einheiten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Der Einkommenseffekt ist die Änderung der nachgefragten Menge aufgrund einer Änderung des realen Einkommens 🗝️]
#v(20pt)
#only("2-")[- Berechnet als Differenz zwischen der endgültigen und der anfänglichen Menge 🧮]
#v(20pt) 
#only("3-")[- In diesem Beispiel beträgt der Einkommenseffekt eine Erhöhung um 2 Einheiten 📈]
#only("1")[
#voiceover("Denke daran, dass der Einkommenseffekt die Änderung der nachgefragten Menge ist, die auf eine Änderung des realen Einkommens des Verbrauchers zurückzuführen ist.")
]
#only("2")[
#voiceover("Er wird als Differenz zwischen der endgültigen Menge und der anfänglichen Menge berechnet.")
]  
#only("3")[
#voiceover("In diesem speziellen Beispiel führte der Preisrückgang zu einem Anstieg des realen Einkommens, was zu einem Einkommenseffekt von einer Erhöhung der nachgefragten Menge um 2 Einheiten führte.")
]
]