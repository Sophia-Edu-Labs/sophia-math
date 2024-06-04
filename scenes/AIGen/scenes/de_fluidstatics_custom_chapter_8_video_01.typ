#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Städtisches Wasserversorgungssystem 🏙️💧]
#v(40pt)
#only("1-")[- Beruht auf Schwerkraft und Druckunterschieden]
#v(20pt)
#only("2-")[- Wasser wird von Reservoirs in verschiedene Teile der Stadt verteilt]
#only("1")[
#voiceover("Städtische Wasserversorgungssysteme basieren auf den Prinzipien der Schwerkraft und Druckunterschieden, um Wasser effektiv zu verteilen.")
]
#only("2")[
#voiceover("Wasser wird in Reservoirs auf höheren Lagen gespeichert und dann durch ein Netzwerk von Rohren in verschiedene Teile der Stadt verteilt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Die Rolle der Schwerkraft 🌍]
#v(40pt)
#only("1-")[- Wasser fließt natürlich von höheren zu niedrigeren Lagen]
#v(20pt)
#only("2-")[- Potentielle Energie wird in kinetische Energie umgewandelt]
#only("1")[
#voiceover("Die Schwerkraft spielt eine entscheidende Rolle in diesem Prozess. Wasser fließt natürlich von höheren zu niedrigeren Lagen.")
]
#only("2")[
#voiceover("Während das Wasser abwärts fließt, wird seine potentielle Energie in kinetische Energie umgewandelt, was die notwendige Kraft für die Verteilung liefert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Druckunterschiede 📈📉]
#v(40pt)
#only("1-")[- Entstehen durch das Gewicht der Wassersäule]
#v(20pt)
#only("2-")[- Höherer Druck in niedrigeren Lagen]
#v(20pt)
#only("3-")[- Druck wird berechnet mit: $p = rho g h$]
#only("1")[
#voiceover("Druckunterschiede entstehen durch das Gewicht der Wassersäule über einem bestimmten Punkt.")
]
#only("2")[
#voiceover("Infolgedessen ist der Wasserdruck in niedrigeren Lagen höher als in höheren Lagen.")
]
#only("3")[
#voiceover("Der Druck an einem bestimmten Punkt kann mit der Formel p gleich rho g h berechnet werden, wobei rho die Dichte des Wassers, g die Beschleunigung aufgrund der Schwerkraft und h die Höhe der Wassersäule ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Verteilungsnetzwerk 🚰🏠]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a simple plot representing a city water supply system
fig, ax = plt.subplots(figsize=(6, 4))

# Add a reservoir at a higher elevation
ax.add_patch(plt.Rectangle((0.5, 0.7), 0.4, 0.2, facecolor='blue', alpha=0.7))
ax.text(0.7, 0.8, 'Reservoir', ha='center')

# Add houses at lower elevations
house_coords = [(0.2, 0.2), (0.4, 0.3), (0.6, 0.2), (0.8, 0.3)]
for coord in house_coords:
    ax.add_patch(plt.Rectangle(coord, 0.1, 0.1, facecolor='gray', alpha=0.7))

# Connect the reservoir to the houses with pipes
for coord in house_coords:
    ax.plot([0.7, coord[0]+0.05], [0.7, coord[1]+0.1], color='black', linewidth=1)

# Add labels and title
ax.set_xlabel('Distance')
ax.set_ylabel('Elevation')
ax.set_title('City Water Supply System')

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
#voiceover("Das Wasserversorgungsnetzwerk besteht aus Rohren, die Wasser von den Reservoirs zu einzelnen Häusern und Gebäuden transportieren.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Städtische Wasserversorgungssysteme beruhen auf Schwerkraft und Druckunterschieden 🌍📈📉]
#v(20pt)
#only("2-")[- Wasser fließt von Reservoirs auf höheren Lagen zu niedrigeren Lagen 🏞️➡️🏙️]
#v(20pt)
#only("3-")[- Der Druck ist in niedrigeren Lagen aufgrund des Gewichts der Wassersäule höher 📏]
#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass städtische Wasserversorgungssysteme auf den Prinzipien der Schwerkraft und Druckunterschiede beruhen, um Wasser effektiv zu verteilen.")
]
#only("2")[
#voiceover("Wasser fließt von Reservoirs auf höheren Lagen zu niedrigeren Lagen, wo es zu Häusern und Gebäuden verteilt wird.")
]
#only("3")[
#voiceover("Der Druck ist in niedrigeren Lagen aufgrund des Gewichts der Wassersäule höher, was eine effiziente Wasserverteilung in der ganzen Stadt gewährleistet.")
]
]