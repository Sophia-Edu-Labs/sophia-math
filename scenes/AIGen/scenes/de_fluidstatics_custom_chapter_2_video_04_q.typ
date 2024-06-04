#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Druck des Staudamms]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 4))

# Draw the dam
dam_height = 10
dam_width = 2
ax.plot([0, 0], [0, dam_height], color='black', linewidth=2)
ax.plot([0, dam_width], [dam_height, dam_height], color='black', linewidth=2)
ax.plot([dam_width, dam_width], [0, dam_height], color='black', linewidth=2)

# Draw the water
water_depth = 10
ax.fill_between([0, dam_width], [dam_height, dam_height], [dam_height - water_depth, dam_height - water_depth], color='blue', alpha=0.5)

# Label the water depth
ax.annotate(f'Water depth = {water_depth} m', xy=(dam_width/2, dam_height - water_depth/2), xytext=(dam_width + 1, dam_height - water_depth/2), 
            arrowprops=dict(facecolor='black', arrowstyle='->'), fontsize=12, ha='left', va='center')

# Add a question mark at the bottom
ax.text(dam_width/2, 0, '?', fontsize=24, ha='center', va='bottom', color='red')

# Set the limits and remove the axes
ax.set_xlim(-1, dam_width + 2)
ax.set_ylim(0, dam_height + 1)
ax.axis('off')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// Die Abbildung zeigt ein einfaches Staudamm-Diagramm mit der beschrifteten Wassertiefe. Ein rotes Fragezeichen ist unten platziert, was auf die Frage nach dem Druck an dieser Stelle hinweist.
#v(40pt)
#only("2-")[
Gegeben:
- Wassertiefe $h = 10$ m
- Wasserdichte $rho = 1000$ kg/m³
- Gravitationsbeschleunigung $g = 9.81$ m/s²
]
// Die gegebenen Informationen sind ab Folie 2 aufgelistet
#v(40pt)
#only("3-")[
Berechne den Druck $p$ am Boden des Staudamms mit:
]
#v(20pt)
#only("3-")[
$p = rho dot g dot h$
]
// Die Formel zur Berechnung des Drucks wird auf Folie 3 angezeigt

#only("1")[
#voiceover("Betrachte einen Staudamm mit einer Wassertiefe von 10 Metern.")
]

#only("2")[
#voiceover("Wir wissen, dass die Wasserdichte 1000 Kilogramm pro Kubikmeter beträgt und die Gravitationsbeschleunigung 9,81 Meter pro Sekunde zum Quadrat ist.")
]

#only("3")[
#voiceover("Berechne den Druck am Boden des Staudamms mit der Formel p gleich rho mal g mal h, wobei p der Druck ist, rho die Wasserdichte, g die Gravitationsbeschleunigung und h die Wassertiefe.")
]

]

]#questionDef(
  questionText: "Wie groß ist der Druck $p$ am Boden des Staudamms? Verwende $p = \rho \cdot g \cdot h$. (Antwort in Pascal)",
  answerOptions: ("$p = 98100$ Pa", "$p = 0$ Pa"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: 2
      )
    ),
    answerOptionMatcher:("$p = \key{a}$ Pa"),
    answerOptionsTypes: (
      "a": "number"  
          )
  ),
)