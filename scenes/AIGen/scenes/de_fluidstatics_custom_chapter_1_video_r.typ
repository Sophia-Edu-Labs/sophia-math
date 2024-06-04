#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck in Hochhäusern 🌊]
#v(40pt)
#only("1-")[- Wasserdruck variiert mit der Höhe aufgrund der Schwerkraft 🌍]
#v(20pt)
#only("2-")[- Druck nimmt mit zunehmender Höhe ab 📈]
#v(20pt)
#only("3-")[- Änderungen des Reservoirniveaus beeinflussen die Druckverteilung 🚰]
#only("1")[
#voiceover("In Hochhäusern variiert der Wasserdruck mit der Höhe aufgrund der Schwerkraft, die auf die Wassersäule wirkt.")
]
#only("2")[
#voiceover("Mit zunehmender Höhe nimmt der Wasserdruck ab. Das bedeutet, dass Wasserhähne in höheren Stockwerken einen geringeren Wasserdruck haben als die in niedrigeren Stockwerken.")
]
#only("3")[
#voiceover("Änderungen des Wasserniveaus im Reservoir, das das Gebäude versorgt, beeinflussen die gesamte Druckverteilung. Wenn der Reservoirstand sinkt, verringert sich der Wasserdruck an allen Punkten im Gebäude.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Druckberechnung 📏]
#v(40pt)
#only("1-")[- Druckdifferenz: $Delta p = rho dot g dot h$]
#v(20pt)
#only("2-")[- $rho$: Wasserdichte, $g$: Erdbeschleunigung, $h$: Höhenunterschied]
#only("1")[
#voiceover("Die Druckdifferenz zwischen zwei Punkten in einem Gebäude kann mit der Formel Delta p gleich rho mal g mal h berechnet werden.")
]
#only("2")[
#voiceover("In dieser Gleichung steht rho für die Dichte des Wassers, g für die Erdbeschleunigung und h für den Höhenunterschied zwischen den beiden Punkten.")
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

# Building parameters
ground_pressure = 4 # bar
height = 50 # m
reservoir_drop = 2 # m

# Water properties
rho = 1000 # kg/m^3
g = 9.81 # m/s^2

# Calculate pressure at different heights
heights = np.linspace(0, height, 100)
pressures = ground_pressure - rho * g * heights / 100000 # Convert Pa to bar

# Calculate pressure after reservoir drop
pressures_drop = ground_pressure - rho * g * (heights + reservoir_drop) / 100000

# Plot the pressure distribution
plt.figure(figsize=(8, 6))
plt.plot(pressures, heights, label='Initial Pressure')
plt.plot(pressures_drop, heights, '--', label='Pressure after Reservoir Drop')
plt.xlabel('Pressure (bar)')
plt.ylabel('Height (m)')
plt.ylim(0, height)
plt.xlim(0, ground_pressure)
plt.legend()
plt.grid(True)
plt.title('Water Pressure Distribution in a High Building')
plt.show()
```,
width: 360pt),
caption: [Wasserdruckverteilung in einem Hochhaus vor und nach einem Abfall des Reservoirniveaus.],
)
]
]
#only("1")[
#voiceover("Dieses Diagramm visualisiert die Wasserdruckverteilung in einem Hochhaus. Die durchgezogene Linie stellt den anfänglichen Druck dar, während die gestrichelte Linie den Druck nach einem Abfall des Reservoirniveaus zeigt.")
]
#only("2")[
#voiceover("Wie Du sehen kannst, nimmt der Wasserdruck linear mit der Höhe ab. Nach dem Abfall des Reservoirniveaus verringert sich der Druck an allen Punkten im Gebäude um einen konstanten Betrag.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[- Wasserdruck in Gebäuden variiert mit der Höhe aufgrund der Schwerkraft 🌍]
#v(20pt)
#only("2-")[- Druck nimmt mit zunehmender Höhe ab 📈]
#v(20pt)
#only("3-")[- Änderungen des Reservoirniveaus beeinflussen die gesamte Druckverteilung 🚰]
#v(20pt)
#only("4-")[- Druckdifferenz berechnet mit $Delta p = rho dot g dot h$ 📏]
#only("1")[
#voiceover("Zusammenfassend variiert der Wasserdruck in Hochhäusern mit der Höhe aufgrund der Schwerkraft.")
]
#only("2")[
#voiceover("Der Druck nimmt mit zunehmender Höhe ab, was bedeutet, dass Wasserhähne in höheren Stockwerken einen geringeren Wasserdruck haben.")
]
#only("3")[
#voiceover("Änderungen des Reservoirniveaus, das das Gebäude versorgt, beeinflussen die gesamte Druckverteilung.")
]
#only("4")[
#voiceover("Die Druckdifferenz zwischen zwei Punkten kann mit der Formel Delta p gleich rho mal g mal h berechnet werden, wobei rho die Wasserdichte, g die Erdbeschleunigung und h der Höhenunterschied ist.")
]
]