#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kräfte auf einen Damm]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Define dam dimensions
dam_width = 2
dam_height = 4
water_height = 3

# Draw the dam
dam = plt.Rectangle((0, 0), dam_width, dam_height, linewidth=2, edgecolor='black', facecolor='gray')
ax.add_patch(dam)

# Draw the water
water = plt.Rectangle((0, 0), dam_width, water_height, linewidth=2, edgecolor='blue', facecolor='lightskyblue', alpha=0.5)
ax.add_patch(water)

# Add labels
ax.text(dam_width/2, -0.5, f'{dam_width} m', ha='center', va='center', fontsize=14)
ax.text(dam_width + 0.5, dam_height/2, f'{dam_height} m', ha='left', va='center', fontsize=14)
ax.text(dam_width + 0.5, water_height, f'{water_height} m', ha='left', va='center', fontsize=14)
ax.text(dam_width/2, water_height/2, 'Water', ha='center', va='center', fontsize=16, color='white')

# Set axis limits and remove ticks
ax.set_xlim(-1, dam_width + 2)
ax.set_ylim(-1, dam_height + 1)
ax.set_xticks([])
ax.set_yticks([])

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
// Die Abbildung zeigt ein einfaches Diagramm des Dammquerschnitts mit den angegebenen Abmessungen
#only("1")[
#voiceover("Betrachte diesen Abschnitt eines Damms, der 2 Meter breit und 4 Meter hoch ist. Die Oberkante dieses Abschnitts liegt 1 Meter unter der Wasseroberfläche.")
]
#v(40pt)

#only("2-")[
#text(size: 20pt)[- $rho =$ Dichte des Wassers (kg/m³)]
#v(10pt)
#text(size: 20pt)[- $g =$ Erdbeschleunigung (m/s²)]
#v(10pt)
#text(size: 20pt)[- $h =$ durchschnittliche Tiefe des Abschnitts (m)]  
#v(10pt)
#text(size: 20pt)[- $A =$ Fläche des Abschnitts (m²)]
]
// Die relevanten Variablen für die Kraftberechnung sind aufgelistet
#only("2")[
#voiceover("Um die Gesamtkraft auf diesen Abschnitt zu berechnen, verwenden wir die Formel F gleich rho mal g mal h mal A, wobei rho die Dichte des Wassers, g die Erdbeschleunigung, h die durchschnittliche Tiefe des Abschnitts und A die Fläche des Abschnitts ist.")
]

#v(40pt)
#only("3-")[
#text(size: 24pt, weight: "bold")[Berechne die Gesamtkraft $F$ auf diesen Dammabschnitt 🌊]
]
// Die Frage zur Berechnung der Gesamtkraft wird gestellt
#only("3")[
#voiceover("Deine Aufgabe ist es, die Gesamtkraft F auf diesen Dammabschnitt zu berechnen. Verwende die gegebene Formel und die Abmessungen. Gib Deine Antwort in Newton an.")
]
]

]#questionDef(
questionText: "Was ist die Gesamtkraft $F$ auf diesen Dammabschnitt? Verwende $F = \rho \cdot g \cdot h \cdot A$. (Antwort in Newton)",
answerOptions: ("$196200$ N", "$100000$ N"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ N"),
answerOptionsTypes: (
"a": "number"
)
),
)