#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Koordinaten in Vektorräumen]
#v(40pt)
#only("1-")[- Eindeutiger Identifikator für Punkte 📍]
#v(20pt)
#only("2-")[- Menge von Zahlen 🔢]
#v(20pt)
#only("3-")[- Beispiel in $RR^2$: $(3, 4)$]
#only("1")[
#voiceover("Koordinaten sind eine Möglichkeit, einen Punkt in einem Vektorraum eindeutig zu identifizieren.")
]
#only("2")[
#voiceover("Sie werden durch eine Menge von Zahlen dargestellt.")
]
#only("3")[
#voiceover("Zum Beispiel kann im zweidimensionalen reellen Vektorraum R2 ein Punkt durch die Koordinaten 3 und 4 identifiziert werden, geschrieben als das geordnete Paar (3, 4).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung von Koordinaten]
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

# Plot the point (3, 4)
ax.scatter(3, 4, color='red', s=100)
ax.annotate('(3, 4)', xy=(3, 4), xytext=(3.1, 4.2), fontsize=12)

# Set the limits and labels for the axes
ax.set_xlim(0, 5)
ax.set_ylim(0, 5)
ax.set_xlabel('x')
ax.set_ylabel('y')

# Add grid lines
ax.grid(True)

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung des Punktes (3, 4) im zweidimensionalen reellen Vektorraum R2. Die x-Koordinate ist 3 und die y-Koordinate ist 4.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimension und Koordinaten]
#v(40pt)
#only("1-")[- Dimension: Anzahl der benötigten Koordinaten]
#v(20pt)
#only("2-")[- $RR^2$: 2 Koordinaten $(x, y)$]
#v(20pt)
#only("3-")[- $RR^3$: 3 Koordinaten $(x, y, z)$]
#only("1")[
#voiceover("Die Anzahl der benötigten Koordinaten zur Identifizierung eines Punktes in einem Vektorraum wird durch die Dimension des Raumes bestimmt.")
]
#only("2")[
#voiceover("In R2 benötigen wir zwei Koordinaten, typischerweise bezeichnet als x und y.")
]
#only("3")[
#voiceover("In R3 benötigen wir drei Koordinaten, üblicherweise bezeichnet als x, y und z.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Koordinaten: Eindeutige Identifikatoren für Punkte 📍]
#v(20pt)
#only("2-")[- Dargestellt durch eine Menge von Zahlen 🔢]
#v(20pt)
#only("3-")[- Dimension bestimmt die Anzahl der benötigten Koordinaten 📏]
#only("1")[
#voiceover("Zusammenfassend sind Koordinaten eindeutige Identifikatoren für Punkte in einem Vektorraum.")
]
#only("2")[
#voiceover("Sie werden durch eine Menge von Zahlen dargestellt.")
]
#only("3")[
#voiceover("Die Dimension des Vektorraums bestimmt die Anzahl der benötigten Koordinaten zur Identifizierung eines Punktes.")
]
]