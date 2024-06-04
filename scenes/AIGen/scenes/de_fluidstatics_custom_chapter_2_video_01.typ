#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kräfte auf einen Damm 🌊]
#v(40pt)
#only("1-")[- Wasser übt Kraft auf den Damm aus 💪]
#v(20pt)
#only("2-")[- Die Kraft nimmt mit der Tiefe zu ⬇]
#v(20pt)
#only("3-")[- Die Kraft hängt auch von der untergetauchten Fläche ab 🟦]
#only("1")[
#voiceover("Wenn ein Damm Wasser zurückhält, übt das Wasser eine Kraft auf den Damm aus.")
]
#only("2")[
#voiceover("Diese Kraft nimmt zu, je tiefer wir ins Wasser gehen. Das liegt daran, dass der Wasserdruck mit der Tiefe zunimmt.")
]
#only("3")[
#voiceover("Die Kraft hängt auch von der Fläche des Damms ab, die unter Wasser getaucht ist. Eine größere untergetauchte Fläche bedeutet eine größere Kraft.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydrostatischer Druck 📏]
#v(40pt)
#only("1-")[$ p = rho g h $]
#v(20pt)
#only("2-")[- $p$: Druck (Pa)]
#v(10pt)
#only("3-")[- $rho$: Dichte des Wassers (1000 kg/m³)]
#v(10pt)
#only("4-")[- $g$: Erdbeschleunigung (9,81 m/s²)]
#v(10pt)
#only("5-")[- $h$: Tiefe (m)]
#only("1")[
#voiceover("Der Druck in einer bestimmten Tiefe wird durch diese Formel gegeben: Druck ist gleich Dichte mal Erdbeschleunigung mal Tiefe.")
]
#only("2")[
#voiceover("Hier steht p für den Druck, der in Pascal gemessen wird.")
]
#only("3")[
#voiceover("Rho ist die Dichte des Wassers, die etwa 1000 Kilogramm pro Kubikmeter beträgt.")
]
#only("4")[
#voiceover("g ist die Erdbeschleunigung, ungefähr 9,81 Meter pro Sekunde zum Quadrat.")
]
#only("5")[
#voiceover("Und h ist die Tiefe unter der Wasseroberfläche, gemessen in Metern.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kraft auf den Damm 🌊💪]
#v(40pt)
#only("1-")[$ F = p A $]
#v(20pt)
#only("2-")[- $F$: Kraft (N)]
#v(10pt)
#only("3-")[- $p$: Druck (Pa)]
#v(10pt)
#only("4-")[- $A$: untergetauchte Fläche (m²)]
#only("1")[
#voiceover("Die Kraft auf den Damm wird dann berechnet, indem der Druck mit der untergetauchten Fläche des Damms multipliziert wird.")
]
#only("2")[
#voiceover("F steht für die Kraft, gemessen in Newton.")
]
#only("3")[
#voiceover("p ist der Druck, den wir im vorherigen Schritt berechnet haben.")
]
#only("4")[
#voiceover("Und A ist die untergetauchte Fläche des Damms, gemessen in Quadratmetern.")
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

h = np.linspace(0, 10, 100)  # Tiefe von 0 bis 10 Meter
rho = 1000  # Dichte des Wassers (kg/m³)
g = 9.81    # Erdbeschleunigung (m/s²)
A = 1       # Fläche (m²)

p = rho * g * h             # Druck
F = p * A                   # Kraft

plt.figure(figsize=(6, 4))
plt.plot(h, F/1000, linewidth=2, color='blue')
plt.xlabel('Tiefe (m)')
plt.ylabel('Kraft (kN)')
plt.title('Kraft auf den Damm vs. Tiefe')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dieses Diagramm zeigt, wie die Kraft auf den Damm mit der Tiefe zunimmt. Die Tiefe ist auf der horizontalen Achse, und die Kraft in Kilonewton ist auf der vertikalen Achse. Wie Du sehen kannst, nimmt die Kraft linear mit der Tiefe zu.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[- Wasser übt Kraft auf Dämme aus 🌊💪]
#v(20pt)
#only("2-")[- Die Kraft nimmt mit der Tiefe und der untergetauchten Fläche zu ⬇🟦]
#v(20pt)
#only("3-")[- Druck: $p = rho g h$]
#v(20pt)
#only("4-")[- Kraft: $F = p A$]
#only("1")[
#voiceover("Zusammenfassend übt Wasser eine Kraft auf Dämme aus.")
]
#only("2")[
#voiceover("Diese Kraft nimmt mit der Tiefe des Wassers und der untergetauchten Fläche des Damms zu.")
]
#only("3")[
#voiceover("Der Druck wird mit der Formel p gleich rho g h berechnet.")
]
#only("4")[
#voiceover("Und die Kraft wird berechnet, indem der Druck mit der untergetauchten Fläche multipliziert wird.")
]
]