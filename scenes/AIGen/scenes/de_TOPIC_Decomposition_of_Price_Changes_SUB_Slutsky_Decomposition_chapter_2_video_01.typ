#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt]
#v(40pt)
#only("1-")[- Tritt auf, wenn eine Preisänderung das reale Einkommen des Konsumenten beeinflusst 💰]
#v(20pt)
#only("2-")[- Führt zu einer Veränderung des Konsums 🛍️]
#only("1")[
#voiceover("Der Einkommenseffekt tritt auf, wenn eine Preisänderung eines Gutes das reale Einkommen des Konsumenten beeinflusst.")
]
#only("2")[
#voiceover("Diese Veränderung des realen Einkommens führt zu einer Veränderung des Konsums des Konsumenten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[- Der Preis für Äpfel sinkt von 2 \$ auf 1 \$ pro Pfund 🍎📉]
#v(20pt)
#only("2-")[- Das reale Einkommen des Konsumenten steigt 💰⬆️]
#v(20pt)
#only("3-")[- Der Konsument kann sich nun mehr Güter leisten, einschließlich Äpfel 🛒🍎]
#only("1")[
#voiceover("Betrachten wir ein Beispiel. Angenommen, der Preis für Äpfel sinkt von 2 Dollar auf 1 Dollar pro Pfund.")
]
#only("2")[
#voiceover("Diese Preissenkung erhöht effektiv das reale Einkommen des Konsumenten.")
]
#only("3")[
#voiceover("Mit diesem erhöhten realen Einkommen kann sich der Konsument nun mehr Güter leisten, einschließlich mehr Äpfel.")
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

# Define the budget lines
x = np.linspace(0, 10, 100)
y1 = 10 - 2*x  # Original budget line
y2 = 10 - x    # New budget line after price decrease

# Plot the budget lines
ax.plot(x, y1, color='blue', label='Original Budget Line')
ax.plot(x, y2, color='red', label='New Budget Line')

# Add labels and legend
ax.set_xlabel('Quantity of Apples')
ax.set_ylabel('Quantity of Other Goods')
ax.set_title('Income Effect')
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
#voiceover("Dieses Diagramm veranschaulicht den Einkommenseffekt. Die blaue Linie stellt die ursprüngliche Budgetbeschränkung des Konsumenten dar. Nach der Preissenkung der Äpfel verschiebt sich die Budgetlinie nach außen zur roten Linie. Diese Verschiebung repräsentiert die Erhöhung des realen Einkommens des Konsumenten, wodurch er mehr Äpfel und andere Güter konsumieren kann.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Einkommenseffekt: Preisänderung → Veränderung des realen Einkommens → Veränderung des Konsums]
#v(20pt)
#only("2-")[- Preissenkung → Erhöhung des realen Einkommens → Erhöhung des Konsums]
#v(20pt)
#only("3-")[- Grafisch: Verschiebung der Budgetbeschränkung nach außen]
#only("1")[
#voiceover("Zusammenfassend beschreibt der Einkommenseffekt, wie eine Preisänderung zu einer Veränderung des realen Einkommens führt, was wiederum zu einer Veränderung des Konsums führt.")
]
#only("2")[
#voiceover("Insbesondere erhöht eine Preissenkung eines Gutes das reale Einkommen des Konsumenten, wodurch er seinen Konsum dieses Gutes und anderer Güter erhöhen kann.")
]
#only("3")[
#voiceover("Grafisch wird dies durch eine Verschiebung der Budgetbeschränkung des Konsumenten nach außen dargestellt.")
]
]