#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck in hohen Gebäuden]
#v(40pt)
#only("1-")[
- Der Wasserdruck variiert mit der Höhe aufgrund der Schwerkraft 🌊
]
#only("2-")[
- Druck im Erdgeschoss: 4 bar
- Vierter Stock: 14 m höher
]
#only("3-")[
- Verwende die Formel: $ Delta p = rho dot g dot h $
  - $ rho $ = Dichte des Wassers (1000 kg/m³)
  - $ g $ = Erdbeschleunigung (9,81 m/s²) 
  - $ h $ = Höhenunterschied (m)
]
#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a simple building plot
fig, ax = plt.subplots(figsize=(4, 6))

# Draw the building
ax.plot([0, 0], [0, 14], linewidth=2, color='black')
ax.plot([1, 1], [0, 14], linewidth=2, color='black')
ax.plot([0, 1], [0, 0], linewidth=2, color='black')
ax.plot([0, 1], [14, 14], linewidth=2, color='black')

# Add floor labels
ax.text(-0.5, 0, 'Erdgeschoss', fontsize=12)
ax.text(-0.5, 14, '4. Stock', fontsize=12)

# Add height arrow
ax.annotate('', xy=(1.1, 14), xytext=(1.1, 0), 
            arrowprops=dict(facecolor='red', edgecolor='red', width=1, headwidth=8, headlength=10))
ax.text(1.2, 7, '14 m', fontsize=12, color='red')

# Clean up the plot
ax.set_xlim(-1, 2)
ax.set_ylim(-1, 15)
ax.axis('off')

plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("In hohen Gebäuden variiert der Wasserdruck mit der Höhe aufgrund der Schwerkraft, die auf die Wassersäule wirkt.")
]

#only("2")[
#voiceover("In diesem Problem wird angegeben, dass der Wasserdruck im Erdgeschoss 4 bar beträgt und der vierte Stock 14 Meter höher liegt.")
]

#only("3")[
#voiceover("Um den Druckunterschied zu berechnen, können wir die Formel Delta p gleich rho mal g mal h verwenden, wobei rho die Dichte des Wassers, g die Erdbeschleunigung und h der Höhenunterschied ist.")
]

#only("4")[
#voiceover("Basierend auf diesen Informationen, wie groß ist der Druckunterschied zwischen dem Erdgeschoss und dem vierten Stock? Gib Deine Antwort in bar an.")
]

]#questionDef(
questionText: "Wie groß ist der Druckunterschied $ \Delta p $ zwischen dem Erdgeschoss und dem vierten Stock, der $ 14 \, \\text{m} $ höher liegt, wenn der Druck im Erdgeschoss $ 4 $ bar beträgt? Verwende $ \Delta p = \rho \cdot g \cdot h $. (Antwort in bar)",
answerOptions: ("$ 1,37 $ bar", "$ 0 $ bar"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: 0.01
)
),
answerOptionMatcher:("$\key{a}$ bar"),
answerOptionsTypes: (
"a": "number"
)
),
)