#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt]
#v(40pt)
#only("1-")[Der Einkommenseffekt tritt auf, wenn eine Preisänderung das \_\_\_\_\_ des Verbrauchers beeinflusst.]
#v(40pt)
#only("-1")[a) nominales Einkommen]#only("2-")[#text(fill:red)[a) nominales Einkommen]]
#v(10pt)
#only("-1")[b) reales Einkommen]#only("3-")[#text(fill:green)[b) reales Einkommen]]
#v(10pt)
#only("-1")[c) Nutzen]#only("4-")[#text(fill:red)[c) Nutzen]]
#v(10pt)
#only("-1")[d) Präferenzen]#only("5-")[#text(fill:red)[d) Präferenzen]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Hier ist die Erklärung im Video.")]
#only("2")[#voiceover("Der Einkommenseffekt tritt nicht auf, wenn eine Preisänderung das nominale Einkommen des Verbrauchers beeinflusst. Nominales Einkommen ist der Betrag, der vor Berücksichtigung der Inflation verdient wird.")]
#only("3")[#voiceover("Die richtige Antwort ist b) reales Einkommen. Der Einkommenseffekt tritt auf, wenn eine Preisänderung die Kaufkraft oder das reale Einkommen des Verbrauchers beeinflusst, das nominale Einkommen, das um die Inflation bereinigt ist.")]
#only("4")[#voiceover("Der Einkommenseffekt steht nicht in direktem Zusammenhang mit Änderungen im Nutzen. Nutzen ist ein Maß für die Zufriedenheit oder den Nutzen, den ein Verbraucher aus einem Gut oder einer Dienstleistung zieht.")]
#only("5")[#voiceover("Der Einkommenseffekt tritt auch nicht auf, wenn eine Preisänderung die Präferenzen des Verbrauchers beeinflusst. Präferenzen sind die Vorlieben und Wünsche des Verbrauchers für verschiedene Güter und Dienstleistungen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Schritt 1: Verstehe das Konzept des realen Einkommens 💰]
#v(10pt)
#only("2-")[- Reales Einkommen ist die Kaufkraft, d.h. nominales Einkommen, das um die Inflation bereinigt ist]
#v(20pt)
#only("3-")[Schritt 2: Verstehe, wie Preisänderungen das reale Einkommen beeinflussen 📈📉]
#v(10pt)
#only("4-")[- Wenn die Preise sinken, steigt das reale Einkommen (kann mehr Güter kaufen)]
#only("5-")[- Wenn die Preise steigen, sinkt das reale Einkommen (kann weniger Güter kaufen)]

#only("1")[#voiceover("Lass uns Schritt für Schritt lösen, warum reales Einkommen die richtige Antwort ist.")]
#only("2")[#voiceover("Zuerst müssen wir verstehen, was reales Einkommen ist. Reales Einkommen ist die Kaufkraft des Verbrauchers. Es ist das nominale Einkommen, das um die Inflation bereinigt ist.")]
#only("3")[#voiceover("Als nächstes sehen wir, wie Preisänderungen das reale Einkommen beeinflussen.")]
#only("4")[#voiceover("Wenn die Preise sinken, steigt das reale Einkommen des Verbrauchers, weil er mit dem gleichen nominalen Einkommen mehr Güter kaufen kann.")]
#only("5")[#voiceover("Andererseits, wenn die Preise steigen, sinkt das reale Einkommen des Verbrauchers, weil er mit dem gleichen nominalen Einkommen weniger Güter kaufen kann.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Schritt 3: Verstehe den Einkommenseffekt 🛒]
#v(10pt)
#only("2-")[- Der Einkommenseffekt ist die Änderung des Konsums aufgrund der Änderung des realen Einkommens]
#only("3-")[- Bei normalen Gütern steigt der Konsum, wenn das reale Einkommen steigt und umgekehrt]

#only("1")[#voiceover("Nun definieren wir den Einkommenseffekt.")]
#only("2")[#voiceover("Der Einkommenseffekt ist die Änderung des Konsums, die sich aus der Änderung des realen Einkommens des Verbrauchers aufgrund einer Preisänderung ergibt.")]
#only("3")[#voiceover("Bei normalen Gütern steigt der Konsum, wenn das reale Einkommen steigt, und sinkt, wenn das reale Einkommen sinkt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Define the budget lines
prices_1 = [2, 1]  # Prices before the change
prices_2 = [1, 1]  # Prices after the change
income = 10

# Calculate the quantities for each budget line
quantities_1 = [income / prices_1[0], income / prices_1[1]]
quantities_2 = [income / prices_2[0], income / prices_2[1]]

# Plot the budget lines
ax.plot([0, quantities_1[0]], [quantities_1[1], 0], label='Budget Line 1', linewidth=2)
ax.plot([0, quantities_2[0]], [quantities_2[1], 0], label='Budget Line 2', linewidth=2)

# Highlight the income effect
ax.annotate('Income Effect', xy=(quantities_2[0], quantities_2[1]), xytext=(quantities_2[0]+1, quantities_2[1]+1),
            arrowprops=dict(facecolor='black', width=1, headwidth=6), fontsize=12)

# Add labels and title
ax.set_xlabel('Good 1', fontsize=14)
ax.set_ylabel('Good 2', fontsize=14)
ax.set_title('Income Effect Visualization', fontsize=16)

# Add legend
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
#voiceover("Hier ist eine Visualisierung, um den Einkommenseffekt zu verstehen. Die blaue Linie ist die ursprüngliche Budgetlinie. Wenn der Preis von Gut 1 sinkt, dreht sich die Budgetlinie nach außen zur roten Linie. Der Verbraucher kann sich nun mehr von beiden Gütern leisten, was eine Erhöhung des realen Einkommens veranschaulicht. Der Pfeil zeigt den Einkommenseffekt, die Änderung des Konsums aufgrund dieser Erhöhung des realen Einkommens.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Reales Einkommen ist die Kaufkraft (nominales Einkommen, das um die Inflation bereinigt ist) 💰]
#v(20pt)
#only("2-")[- Preisänderungen beeinflussen das reale Einkommen (↓ Preise ⇒ ↑ reales Einkommen, ↑ Preise ⇒ ↓ reales Einkommen) 📈📉]
#v(20pt)
#only("3-")[- Einkommenseffekt ist die Änderung des Konsums aufgrund der Änderung des realen Einkommens 🛒]
#v(20pt)
#only("4-")[Daher tritt der Einkommenseffekt auf, wenn eine Preisänderung das #text(fill:green)[reale Einkommen] des Verbrauchers beeinflusst.]

#only("1")[#voiceover("Zusammenfassend ist reales Einkommen die Kaufkraft des Verbrauchers, das nominale Einkommen, das um die Inflation bereinigt ist.")]
#only("2")[#voiceover("Preisänderungen beeinflussen das reale Einkommen. Wenn die Preise sinken, steigt das reale Einkommen, und wenn die Preise steigen, sinkt das reale Einkommen.")]
#only("3")[#voiceover("Der Einkommenseffekt ist die Änderung des Konsums, die sich aus der Änderung des realen Einkommens des Verbrauchers aufgrund einer Preisänderung ergibt.")]
#only("4")[#voiceover("Daher ist die richtige Antwort, dass der Einkommenseffekt auftritt, wenn eine Preisänderung das reale Einkommen des Verbrauchers beeinflusst.")]
]