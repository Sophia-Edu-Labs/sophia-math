#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kräfte auf einen Damm 🌊]
#v(40pt)
#only("1-")[- Die Kraft hängt von der Tiefe und der Fläche ab]
#v(20pt)
#only("2-")[- Tiefere Abschnitte erfahren größere Kräfte]
#only("1")[
#voiceover("Die Kraft, die von Wasser auf einen Dammabschnitt ausgeübt wird, hängt von zwei Schlüsselfaktoren ab: der Tiefe des Abschnitts und seiner Fläche.")
]
#only("2")[
#voiceover("Tiefere Abschnitte des Damms erfahren aufgrund des erhöhten Wasserdrucks in größeren Tiefen größere Kräfte.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kraftberechnung 🧮]
#v(40pt)
#only("1-")[$ F = rho dot g dot h dot A $]
#v(20pt)
#only("2-")[- $rho$: Wasserdichte (kg/m³)]
#v(10pt)
#only("3-")[- $g$: Gravitationsbeschleunigung (m/s²)]
#v(10pt)
#only("4-")[- $h$: Tiefe (m)]
#v(10pt)
#only("5-")[- $A$: Fläche (m²)]
#only("1")[
#voiceover("Die Kraft auf einen Dammabschnitt kann mit der Formel F gleich rho mal g mal h mal A berechnet werden.")
]
#only("2")[
#voiceover("Hierbei steht rho für die Dichte des Wassers in Kilogramm pro Kubikmeter.")
]
#only("3")[
#voiceover("g ist die Gravitationsbeschleunigung in Metern pro Sekunde zum Quadrat.")
]
#only("4")[
#voiceover("h ist die Tiefe des Abschnitts in Metern.")
]
#only("5")[
#voiceover("Und A ist die Fläche des Abschnitts in Quadratmetern.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Kräfte 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Dam dimensions
dam_height = 10
dam_width = 20

# Create a grid of points
x = np.linspace(0, dam_width, 100)
y = np.linspace(0, dam_height, 100)
X, Y = np.meshgrid(x, y)

# Calculate the force at each point
rho = 1000  # Water density (kg/m^3)
g = 9.81    # Gravitational acceleration (m/s^2)
F = rho * g * Y

# Create the plot
plt.figure(figsize=(8, 6))
plt.contourf(X, Y, F, cmap='viridis')
plt.colorbar(label='Force (N/m²)')
plt.xlabel('Width (m)')
plt.ylabel('Height (m)')
plt.title('Force Distribution on a Dam')
plt.show()
```,
width: 360pt),
caption: [Kraftverteilung auf einem Damm. Tiefere Abschnitte erfahren größere Kräfte, wie durch den Farbverlauf angezeigt wird.],
)
]
]
#only("1")[
#voiceover("Diese Visualisierung zeigt die Kraftverteilung auf einem Damm. Der Farbverlauf zeigt, dass tiefere Abschnitte größere Kräfte erfahren.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[- Die Kraft auf einen Dammabschnitt hängt von der Tiefe und der Fläche ab]
#v(20pt)
#only("2-")[- Tiefere Abschnitte erfahren größere Kräfte]
#v(20pt)
#only("3-")[- Die Kraft kann mit $ F = rho dot g dot h dot A $ berechnet werden]
#only("1")[
#voiceover("Zusammenfassend hängt die Kraft auf einen Dammabschnitt von seiner Tiefe und Fläche ab.")
]
#only("2")[
#voiceover("Tiefere Abschnitte des Damms erfahren aufgrund des erhöhten Wasserdrucks größere Kräfte.")
]
#only("3")[
#voiceover("Die Kraft kann mit der Formel F gleich rho mal g mal h mal A berechnet werden, wobei rho die Wasserdichte, g die Gravitationsbeschleunigung, h die Tiefe und A die Fläche des Abschnitts ist.")
]
]