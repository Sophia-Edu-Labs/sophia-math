#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Tiefsee-Druck 🌊]
#v(40pt)
#only("1-")[
- Der Druck nimmt mit der Tiefe zu
]
#v(20pt)
#only("2-")[
- Formel: $ p = rho dot g dot h $
  - $ rho $ = Dichte (kg/m³)
  - $ g $ = Schwerkraft (m/s²)
  - $ h $ = Tiefe (m)
]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the depth values
depth = np.linspace(0, 1000, 100)

# Calculate the pressure values
rho = 1020
g = 9.81
pressure = rho * g * depth

# Create the plot
plt.figure(figsize=(6, 6))
plt.plot(pressure/1e6, -depth, linewidth=2, color='blue')
plt.xlabel('Pressure (MPa)')
plt.ylabel('Depth (m)')
plt.title('Pressure vs Depth in Seawater')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [Druck vs Tiefe im Meerwasser],
)
]
]
]

#only("1")[
#voiceover("In der Tiefsee nimmt der Druck zu, je tiefer du gehst.")
]

#only("2")[
#voiceover("Der Druck kann mit der Formel p gleich rho mal g mal h berechnet werden, wobei rho die Dichte des Meerwassers in Kilogramm pro Kubikmeter, g die Beschleunigung aufgrund der Schwerkraft in Metern pro Sekunde zum Quadrat und h die Tiefe in Metern ist.")
]

#only("3")[
#voiceover("Dieses Diagramm zeigt, wie der Druck linear mit der Tiefe zunimmt. Je tiefer du gehst, desto höher ist der Druck.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#only("1-")[
Berechne den Druck in einer Tiefe von 1000 m im Meerwasser.
]
#v(20pt)
#only("2-")[
Gegeben:
- $ rho $ für Meerwasser = 1020 kg/m³
- $ g $ = 9.81 m/s²
- $ h $ = 1000 m
]
#v(20pt)
#only("3-")[
Verwende die Formel:
$ p = rho dot g dot h $
]
#v(20pt)
#only("4-")[
Gib deine Antwort in Pascal (Pa) an.
]

#only("1")[
#voiceover("Jetzt bist du dran. Berechne den Druck in einer Tiefe von 1000 Metern im Meerwasser.")
]

#only("2")[
#voiceover("Gegeben ist, dass die Dichte des Meerwassers 1020 Kilogramm pro Kubikmeter beträgt, die Beschleunigung aufgrund der Schwerkraft 9.81 Meter pro Sekunde zum Quadrat ist und die Tiefe 1000 Meter beträgt.")
]

#only("3")[
#voiceover("Verwende die Formel p gleich rho mal g mal h, um den Druck zu berechnen.")
]

#only("4")[
#voiceover("Gib deine Antwort in Pascal an.")
]
]#questionDef(
questionText: "Wie hoch ist der Druck in einer Tiefe von 1000 m im Meerwasser? Verwende $ p = \rho \cdot g \cdot h $, wobei $ \rho $ für Meerwasser $ 1020 \, \\text{kg/m}^3 $, $ g = 9.81 \, \\text{m/s}^2 $ und $ h = 1000 \, \\text{m} $ ist. Gib deine Antwort in Pascal (Pa) an.",
answerOptions: ("$10006200$ Pa", "$0$ Pa"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ Pa"),
answerOptionsTypes: (
"a": "number"
)
),
)