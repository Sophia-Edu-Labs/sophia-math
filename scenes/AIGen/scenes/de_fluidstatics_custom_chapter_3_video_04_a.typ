#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Druckunterschied]
#v(40pt)
#only("1-")[- Gegeben: $h = 50 "cm" = 0.5 "m"$, $rho = 1060 "kg/m"^3$]
#v(20pt)
#only("2-")[- Verwende: $Delta p = rho dot g dot h$]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Gegeben ist, dass der Höhenunterschied zwischen Kopf und Herz 50 Zentimeter beträgt, was 0,5 Metern entspricht, und die Blutdichte beträgt 1060 Kilogramm pro Kubikmeter.")
]
#only("2")[
#voiceover("Um den Druckunterschied zu finden, verwenden wir die Formel Delta p gleich rho mal g mal h, wobei rho die Dichte, g die Erdbeschleunigung und h der Höhenunterschied ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[$ Delta p = rho dot g dot h$]
#v(10pt)
#only("2-")[$ Delta p = 1060 dot 9.81 dot 0.5$]
#v(10pt)
#only("3-")[$ Delta p = 5193 "Pa"$]
#only("1")[
#voiceover("Lass uns die gegebenen Werte in die Formel einsetzen.")
]
#only("2")[
#voiceover("Delta p gleich 1060 mal 9.81 mal 0.5.")
]
#only("3")[
#voiceover("Das ergibt 5193 Pascal. Dies ist der Druckunterschied zwischen Kopf und Herz aufgrund des Höhenunterschieds und der Blutdichte.")
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

# Set up the figure
fig, ax = plt.subplots(figsize=(6, 8))

# Draw the head and heart
head_center = (0.5, 0.8)
heart_center = (0.5, 0.3)
head = plt.Circle(head_center, 0.1, color='lightblue', zorder=10)
heart = plt.Circle(heart_center, 0.1, color='red', zorder=10)
ax.add_artist(head)
ax.add_artist(heart)

# Draw the body
body = plt.Rectangle((0.4, 0.2), 0.2, 0.6, color='lightgray', zorder=5)
ax.add_patch(body)

# Draw the height difference
ax.annotate('', xy=head_center, xytext=heart_center, 
            arrowprops=dict(arrowstyle='<->', color='black', lw=2))
ax.text(0.52, 0.55, '0.5 m', fontsize=12, color='black')

# Set up the axes
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_aspect('equal')
ax.axis('off')

# Add labels
ax.text(0.5, 0.9, 'Head', fontsize=14, ha='center', va='center')
ax.text(0.5, 0.2, 'Heart', fontsize=14, ha='center', va='center')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung des Problems. Der blaue Kreis stellt den Kopf dar, und der rote Kreis stellt das Herz dar. Der Pfeil zeigt den Höhenunterschied von 0,5 Metern zwischen ihnen.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎉]
#v(40pt)
#only("1-")[- Höhenunterschied: $h = 0.5 "m"$ ⬆]
#v(20pt)
#only("2-")[- Blutdichte: $rho = 1060 "kg/m"^3$ 🩸]
#v(20pt) 
#only("3-")[- Formel: $Delta p = rho dot g dot h$ 🧮]
#v(20pt)
#only("4-")[- Druckunterschied: $Delta p = 5193 "Pa"$ ✅]
#only("1")[
#voiceover("Zusammenfassend beträgt der Höhenunterschied zwischen Kopf und Herz 0,5 Meter.")
]
#only("2")[
#voiceover("Die Blutdichte beträgt 1060 Kilogramm pro Kubikmeter.")
]
#only("3")[
#voiceover("Wir haben die Formel Delta p gleich rho mal g mal h verwendet, um den Druckunterschied zu berechnen.")
]
#only("4")[
#voiceover("Der Druckunterschied beträgt 5193 Pascal. Großartige Arbeit bei der Lösung dieses Problems!")
]
]