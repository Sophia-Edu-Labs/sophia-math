#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Additionssatz]
#v(40pt)
#only("1-")[- #text(weight: "bold")[Gesucht:] $P(A union B)$]
#v(20pt)
#only("2")[- #text(weight: "bold")[Formel:]#align(center)[$P(A union B) =$

$P(A) + P(B) - P(A sect B)$]
]
#only("3-")[- #text(weight: "bold")[Formel:]#align(center)[$P(A union B) =$

$P(A) + P(B) - #text(fill:red)[$P(A sect B)$]$]
]
#v(20pt)
#only("1")[
#voiceover("Der Additionssatz der Wahrscheinlichkeit ermöglicht es uns ja, die Wahrscheinlichkeit dafür zu berechnen, dass mindestens eines von zwei Ereignissen A oder B eintritt.")
]
#only("2")[
#voiceover("Die Formel lautet: Die Wahrscheinlichkeit der Vereinigung von A und B ist gleich der Summe der Einzelwahrscheinlichkeiten von A und B, abzüglich der Wahrscheinlichkeit des Schnitts von A und B.")
]
#only("3")[
#voiceover("Aber warum ziehen wir die Wahrscheinlichkeit des Schnitts von A und B ab? Das wollen wir uns jetzt anhand eines Beispiels anschauen.")
]
]
#slide()[
#text(weight: "bold", size:18pt)[Warum ziehen wir $P(A sect B)$ ab?]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
# Elements of set A
elements_A = {'2': (-0.8, 0.3), '4': (-0.4, -0.5), '6': (0, 0)}
# Elements of set B
elements_B = {'5': (0.6, 0.4), '6': (0, 0)}
# Define the figure and axis
fig, ax = plt.subplots()
ax.set_xlim(-1.5, 1.5)
ax.set_ylim(-1.5, 1.5)
ax.set_aspect('equal')
# Draw the circles representing the sets
circle_A = plt.Circle((-0.5, 0), 0.8, color='blue', fill=False, linewidth=3, label='A: Gerade Zahlen')
circle_B = plt.Circle((0.5, 0), 0.8, color='green', fill=False, linewidth=3, label='B: Zahlen > 4')
# Add the elements to the sets
for k, v in elements_A.items():
  ax.plot(v[0], v[1], 'o', color='red') # Point
  ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=16) # Label
for k, v in elements_B.items():
  ax.plot(v[0], v[1], 'o', color='red') # Point
  ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=16) # Label
# Add the circles to the plot
ax.add_artist(circle_A)
ax.add_artist(circle_B)
# Add legend and grid
ax.legend(fontsize=16, loc='upper left')
ax.grid(True)
# Hide the axes for a cleaner look
ax.set_xticks([])
ax.set_yticks([])
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
#only("2-")[
- $A={2,4,6}$
]
#only("3-")[
- $B={5,6}$
]
#only("4-")[
- $|A|+|B|$ zählt $A sect B$ doppelt
- $A sect B = {6}$
]
#only("5-")[
  $ arrow.b $
#align(center)[Ziehe $P(A sect B) = P({6})$ ab]
#v(10pt)
]
#only("6-")[
#align(center)[$->P(A union B) = 1/2 + 1/3 - 1/6 = 2/3$]
]
#only("1")[
#voiceover("Betrachten wir dafür einen Würfelwurf.")
]
#only("2")[
#voiceover("Das Ereignis A sei das Eintreten einer geraden Zahl, also zwei vier oder 6.")
]
#only("3")[
#voiceover("Und das Ereignis B das Eintreten einer Zahl größer als 4, also fünf oder sechs.")
]
#only("4")[
#voiceover("Wenn wir nun die Wahrscheinlichkeiten von A und B einfach addieren würden, dann würden wir die Wahrscheinlichkeit für die 6 doppelt zählen, einmal bei den geraden Zahlen und einmal bei den Zahlen größer als 4.")
]
#only("5")[
#voiceover("Um dies zu korrigieren, müssen wir die Wahrscheinlichkeit des Schnitts A geschnitten B, also ein sechstel, abziehen.")
]
#only("6")[
#voiceover("Dann erhalten wir die korrekte Wahrscheinlichkeit für die Vereinigung A vereinigt B, nämlich ein halb plus ein drittel minus ein sechstel, also zwei drittel, ohne Doppelzählung der 6.")
]
]