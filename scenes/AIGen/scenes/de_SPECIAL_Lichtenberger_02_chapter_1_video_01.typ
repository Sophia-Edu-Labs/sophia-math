#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck in Gebäuden 🏢]
#v(40pt)
#only("1-")[- Druck variiert mit der Höhe 📏]
#v(20pt)
#only("2-")[- Aufgrund der Gravitationskraft 🌍]
#v(20pt)
#only("3-")[- Wirkt auf die Wassersäule 💧]
#only("1")[
#voiceover("In Gebäuden variiert der Wasserdruck je nach Höhe. Das bedeutet, dass der Druck auf verschiedenen Etagen des Gebäudes unterschiedlich ist.")
]
#only("2")[
#voiceover("Diese Druckvariation ist auf die Gravitationskraft der Erde zurückzuführen.")
]
#only("3")[
#voiceover("Die Schwerkraft wirkt auf die Wassersäule in den Rohren und erzeugt einen Druck, der mit der Tiefe zunimmt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Druckformel]
#v(40pt)
#only("1-")[$ P = rho g h $]
#v(20pt)
#only("2-")[- $ P $: Druck (Pa)]
#v(10pt)
#only("3-")[- $ rho $: Dichte des Wassers (kg/m³)]
#v(10pt)
#only("4-")[- $ g $: Gravitationsbeschleunigung (m/s²)]
#v(10pt)
#only("5-")[- $ h $: Höhe der Wassersäule (m)]
#only("1")[
#voiceover("Der Druck kann mit der Formel P gleich rho g h berechnet werden.")
]
#only("2")[
#voiceover("Hier steht P für den Druck, gemessen in Pascal.")
]
#only("3")[
#voiceover("Rho ist die Dichte des Wassers, die ungefähr 1000 Kilogramm pro Kubikmeter beträgt.")
]
#only("4")[
#voiceover("g ist die Gravitationsbeschleunigung, die auf der Erde etwa 9,81 Meter pro Sekunde zum Quadrat beträgt.")
]
#only("5")[
#voiceover("Und h ist die Höhe der Wassersäule, gemessen in Metern.")
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

h = np.linspace(0, 10, 100)  # Höhen von 0 bis 10 Meter
rho = 1000  # Dichte des Wassers (kg/m³)
g = 9.81  # Gravitationsbeschleunigung (m/s²)
P = rho * g * h  # Druckberechnung

plt.figure(figsize=(6, 6))
plt.plot(P/1000, h, linewidth=2, color='blue')  # Druck in kPa darstellen
plt.xlabel('Druck (kPa)')
plt.ylabel('Höhe (m)')
plt.title('Wasserdruck vs. Höhe')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dieses Diagramm zeigt, wie der Wasserdruck linear mit der Höhe zunimmt. Der Druck ist auf der horizontalen Achse in Kilopascal aufgetragen, während die Höhe auf der vertikalen Achse in Metern dargestellt ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wasserdruck variiert mit der Höhe in Gebäuden 🏢]
#v(20pt)
#only("2-")[- Gravitationskraft wirkt auf die Wassersäule 🌍💧]
#v(20pt)
#only("3-")[- Druck nimmt linear mit der Tiefe zu 📈]
#only("1")[
#voiceover("Zusammenfassend variiert der Wasserdruck in Gebäuden mit der Höhe.")
]
#only("2")[
#voiceover("Dies liegt daran, dass die Gravitationskraft auf die Wassersäule in den Rohren wirkt.")
]
#only("3")[
#voiceover("Infolgedessen nimmt der Druck linear zu, je tiefer man geht, weshalb der Druck in den unteren Etagen eines Gebäudes höher ist.")
]
]