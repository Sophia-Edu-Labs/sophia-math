#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck und Tiefe 🌊]
#v(40pt)
#only("1-")[- Der Druck nimmt mit der Tiefe zu 📏]
#only("2-")[- Aufgrund des Gewichts des Wassers darüber 🏋️]
#only("3-")[- Druck = $"Dichte" dot "Gravitation" dot "Tiefe"$]
#only("4-")[- $p = ρ g h$]
#only("1")[
#voiceover("Lass uns erkunden, wie sich der Wasserdruck mit der Tiefe verändert. Wenn wir tiefer in ein Gewässer eintauchen, nimmt der Druck zu.")
]
#only("2")[
#voiceover("Das liegt daran, dass je tiefer wir gehen, desto mehr Wasser sich über uns befindet. Das Gewicht dieser Wassersäule drückt nach unten und erzeugt Druck.")
]
#only("3")[
#voiceover("Mathematisch ist der Druck in einer bestimmten Tiefe gleich der Dichte des Wassers multipliziert mit der Erdbeschleunigung und der Tiefe.")
]
#only("4")[
#voiceover("Dies kann durch die Formel p gleich ρ g h ausgedrückt werden, wobei p der Druck ist, ρ die Dichte des Wassers, g die Erdbeschleunigung und h die Tiefe.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Druckänderung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

depth = np.linspace(0, 10, 100)  # Tiefe von 0 bis 10 Meter
rho = 1000  # Dichte des Wassers (kg/m^3)
g = 9.81  # Erdbeschleunigung (m/s^2)
pressure = rho * g * depth  # Druck berechnen

plt.figure(figsize=(6, 4))
plt.plot(pressure, -depth, 'b-', linewidth=2)
plt.xlabel('Druck (Pa)')
plt.ylabel('Tiefe (m)')
plt.title('Wasserdruck vs Tiefe')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist ein Diagramm, das zeigt, wie sich der Druck mit der Tiefe verändert. Die horizontale Achse stellt den Druck dar, und die vertikale Achse stellt die Tiefe dar. Je tiefer wir gehen, desto mehr nimmt der Druck linear zu.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Wasserdruck nimmt mit der Tiefe zu 🌊📏]
#only("2-")[- Gewicht des Wassers darüber verursacht Druck 🏋️]
#only("3-")[- Formel: $p = ρ dot g dot h$ 📜]
#only("1")[
#voiceover("Zusammenfassend nimmt der Wasserdruck zu, wenn wir tiefer gehen, aufgrund des Gewichts des Wassers darüber.")
]
#only("2")[
#voiceover("Je mehr Wasser sich über einem bestimmten Punkt befindet, desto größer ist der Druck an diesem Punkt.")
]
#only("3")[
#voiceover("Diese Beziehung wird durch die Formel p gleich ρ g h beschrieben, die den Druck in Abhängigkeit von der Tiefe unter Berücksichtigung der Dichte des Wassers und der Erdbeschleunigung beschreibt.")
]
]