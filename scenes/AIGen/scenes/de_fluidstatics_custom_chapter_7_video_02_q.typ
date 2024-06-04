#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Problem des schwimmenden Hauses 🏠]
#v(40pt)
#only("1-")[
- Ein schwimmendes Haus wiegt 50.000 kg
- Wasserdichte $rho = 1000$ kg/m³
]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Draw a rectangle representing the floating house
house = plt.Rectangle((0, 0), 5, 2, linewidth=2, edgecolor='k', facecolor='lightskyblue')
ax.add_patch(house)

# Draw water
water = plt.Rectangle((-1, -2), 7, 2, linewidth=0, facecolor='blue', alpha=0.5)
ax.add_patch(water)

# Add labels
ax.text(2.5, 1, '50,000 kg', ha='center', va='center', fontsize=14)
ax.text(2.5, -1, r'$\rho = 1000$ kg/m³', ha='center', va='center', fontsize=14)

# Set limits and remove ticks
ax.set_xlim(-1, 6)
ax.set_ylim(-2, 3)
ax.set_xticks([])
ax.set_yticks([])

# Show the plot
plt.show()
```, width: 360pt),
)
]
]
#v(20pt)
#only("3-")[
❓ Berechne das Volumen des vom schwimmenden Haus verdrängten Wassers
]
#only("1")[
#voiceover("Betrachte ein Problem mit einem schwimmenden Haus. Das Haus wiegt 50.000 Kilogramm und schwimmt auf Wasser mit einer Dichte von 1000 Kilogramm pro Kubikmeter.")
]
#only("2")[
#voiceover("Hier ist eine visuelle Darstellung des schwimmenden Hauses auf dem Wasser.")
]
#only("3")[
#voiceover("Die Frage ist: Welches Volumen an Wasser wird von diesem schwimmenden Haus verdrängt?")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vorgehensweise]
#v(40pt)
#only("1-")[
Verwende die Formel:
]
#v(20pt)
#only("2-")[
$ V = m / rho $
]
#v(20pt)
#only("3-")[
wo:
- $V$ = Volumen des verdrängten Wassers (in m³)
- $m$ = Masse des schwimmenden Hauses (in kg)
- $rho$ = Dichte des Wassers (in kg/m³)
]
#only("1")[
#voiceover("Um dies zu lösen, verwenden wir die Formel, die Volumen, Masse und Dichte in Beziehung setzt.")
]
#only("2")[
#voiceover("Das Volumen entspricht der Masse geteilt durch die Dichte.")
]
#only("3")[
#voiceover("Hierbei steht V für das Volumen des verdrängten Wassers in Kubikmetern, m ist die Masse des schwimmenden Hauses in Kilogramm und rho ist die Dichte des Wassers in Kilogramm pro Kubikmeter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[
Gegeben:
- $m = 50,000$ kg
- $rho = 1000$ kg/m³
]
#v(20pt)
#only("2-")[
❓ Was ist der Wert von $V$, dem Volumen des verdrängten Wassers?
]
#only("1")[
#voiceover("Wir wissen, dass die Masse des Hauses 50.000 Kilogramm beträgt und die Dichte des Wassers 1000 Kilogramm pro Kubikmeter ist.")
]
#only("2")[
#voiceover("Jetzt bist Du dran, das Volumen des vom schwimmenden Haus verdrängten Wassers zu berechnen. Verwende die gegebenen Werte und die Formel, um V zu finden. Viel Glück!")
]

]#questionDef(
questionText: "Was ist das Volumen des vom schwimmenden Haus verdrängten Wassers? Verwende $ V = \frac{m}{\rho} $, wobei $ \rho $ für Wasser 1000 kg/m³ beträgt. (Antwort in Kubikmetern)",
answerOptions: ("V = $50$ m³", "V = $0$ m³"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("V = $\key{a}$ m³"),
answerOptionsTypes: (
"a": "number"
)
),
)