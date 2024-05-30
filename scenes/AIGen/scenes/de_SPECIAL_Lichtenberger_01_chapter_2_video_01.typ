#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Druck und Tiefe]
#v(40pt)
#only("1-")[- Der Druck nimmt mit der Tiefe zu 🌊]
#v(20pt)
#only("2-")[- Formel: $ P = rho g h $]
#v(20pt)
#only("3-")[- $rho$ = Dichte, $g$ = Schwerkraft, $h$ = Tiefe]
#only("1")[
#voiceover("Wenn ein Objekt tiefer in eine Flüssigkeit eintaucht, nimmt der Druck, den es erfährt, zu. Dies liegt daran, dass das Gewicht der Flüssigkeit über dem Objekt mit der Tiefe zunimmt.")
]
#only("2")[
#voiceover("Der Druck in einer bestimmten Tiefe kann mit der Formel P gleich rho g h berechnet werden, wobei P der Druck ist,")
]
#only("3")[
#voiceover("rho die Dichte der Flüssigkeit, g die Beschleunigung aufgrund der Schwerkraft und h die Tiefe ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb und Tiefe]
#v(40pt)
#only("1-")[- Die Auftriebskraft hängt von der verdrängten Flüssigkeit ab 🎈]
#v(20pt)
#only("2-")[- Formel: $ F_b = rho g V $]
#v(20pt)
#only("3-")[- $V$ = Volumen der verdrängten Flüssigkeit]
#only("1")[
#voiceover("Die Auftriebskraft, die auf ein Objekt wirkt, ändert sich ebenfalls mit der Tiefe. Diese Kraft hängt von der Menge der vom Objekt verdrängten Flüssigkeit ab.")
]
#only("2")[
#voiceover("Die Auftriebskraft kann mit der Formel F sub b gleich rho g V berechnet werden, wobei F sub b die Auftriebskraft ist,")
]
#only("3")[
#voiceover("rho und g sind wie zuvor, und V ist das Volumen der vom Objekt verdrängten Flüssigkeit.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Auswirkungen auf Objekte]
#v(40pt)
#only("1-")[- Objekte komprimieren sich beim Abtauchen 📉]
#v(20pt)
#only("2-")[- Der Auftrieb ändert sich mit dem Volumen des Objekts 🎡]
#v(20pt)
#only("3-")[- Gleichgewichtstiefe: $F_b = "Gewicht"$ ⚖️]
#only("1")[
#voiceover("Wenn ein Objekt abtaucht, kann der zunehmende Druck dazu führen, dass es sich komprimiert und sein Volumen verringert. Diese Kompression ist bei Gasen stärker ausgeprägt als bei Flüssigkeiten oder Feststoffen.")
]
#only("2")[
#voiceover("Die Änderung des Volumens eines Objekts beeinflusst seinen Auftrieb. Wenn sich das Objekt komprimiert, verdrängt es weniger Flüssigkeit, wodurch die auf es wirkende Auftriebskraft verringert wird.")
]
#only("3")[
#voiceover("Ein Objekt erreicht eine Gleichgewichtstiefe, wenn die Auftriebskraft seinem Gewicht entspricht. An diesem Punkt wird das Objekt weder aufsteigen noch sinken.")
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

# Set up the figure
fig, ax = plt.subplots(figsize=(6, 6))

# Create a gradient background to represent depth
depth = np.linspace(0, 1, 100)
depth_gradient = np.vstack((depth, depth))
ax.imshow(depth_gradient, cmap='viridis', extent=[0, 1, 1, 0], aspect='auto', alpha=0.7)

# Plot arrows to show increasing pressure and buoyancy
ax.annotate('', xy=(0.2, 0.8), xytext=(0.2, 0.2), arrowprops=dict(facecolor='red', edgecolor='none', width=1, headwidth=8, headlength=10), annotation_clip=False)
ax.annotate('', xy=(0.8, 0.2), xytext=(0.8, 0.8), arrowprops=dict(facecolor='blue', edgecolor='none', width=1, headwidth=8, headlength=10), annotation_clip=False)

# Add labels
ax.text(0.22, 0.5, 'Increasing\nPressure', color='white', fontsize=12, ha='left', va='center')
ax.text(0.78, 0.5, 'Increasing\nBuoyancy', color='white', fontsize=12, ha='right', va='center')

# Set axis labels and title
ax.set_xlabel('Horizontal Position')
ax.set_ylabel('Depth')
ax.set_title('Pressure and Buoyancy vs. Depth')

# Remove axis ticks
ax.set_xticks([])
ax.set_yticks([])

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Diese Visualisierung zeigt, wie sich Druck und Auftrieb mit der Tiefe ändern. Die Hintergrundfarbe repräsentiert die Tiefe, wobei dunklere Farben größere Tiefen anzeigen. Der rote Pfeil zeigt den zunehmenden Druck, während der blaue Pfeil den zunehmenden Auftrieb zeigt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Der Druck nimmt mit der Tiefe zu 🌊]
#v(20pt)
#only("2-")[- Der Auftrieb hängt von der verdrängten Flüssigkeit ab 🎈]
#v(20pt)
#only("3-")[- Objekte erreichen eine Gleichgewichtstiefe, wenn $F_b = "Gewicht"$ ⚖️]
#only("1")[
#voiceover("Zusammenfassend nimmt der Druck in einer Flüssigkeit mit der Tiefe zu und folgt der Formel P gleich rho g h.")
]
#only("2")[
#voiceover("Der Auftrieb ändert sich ebenfalls mit der Tiefe, da er vom Volumen der vom Objekt verdrängten Flüssigkeit abhängt, gemäß der Formel F sub b gleich rho g V.")
]
#only("3")[
#voiceover("Objekte in einer Flüssigkeit erreichen eine Gleichgewichtstiefe, wenn die Auftriebskraft ihrem Gewicht entspricht, an welchem Punkt sie weder aufsteigen noch sinken.")
]
]