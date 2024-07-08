#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche Multiplizieren]
#v(40pt)

#only("1-")[- Gegeben: $2/7 times 4/6$]
#v(20pt)

#only("2-")[- Schritt 1: Zähler multiplizieren]
#only("3-")[  $2 times 4 = 8$]
#v(20pt)

#only("4-")[- Schritt 2: Nenner multiplizieren]
#only("5-")[  $7 times 6 = 42$]
#v(20pt)

#only("6-")[- Ergebnis: $8/42$]
#v(20pt)

#only("7-")[- Vereinfachen: $8/42 = 4/21$]

#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#only("2")[
#voiceover("Um Brüche zu multiplizieren, beginnen wir damit, die Zähler miteinander zu multiplizieren.")
]

#only("3")[
#voiceover("In diesem Fall multiplizieren wir 2 mit 4, was uns 8 ergibt.")
]

#only("4")[
#voiceover("Als nächstes multiplizieren wir die Nenner miteinander.")
]

#only("5")[
#voiceover("Hier multiplizieren wir 7 mit 6, was 42 ergibt.")
]

#only("6")[
#voiceover("Unser anfängliches Ergebnis ist also 8 über 42.")
]

#only("7")[
#voiceover("Wir können diesen Bruch vereinfachen, indem wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 2 ist, teilen. Das gibt uns unser Endergebnis: 4 über 21.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create the figure and axis
fig, ax = plt.subplots(figsize=(10, 6))

# Define the fractions
frac1 = [2, 7]
frac2 = [4, 6]
result = [8, 42]
simplified = [4, 21]

# Create bar plots for each fraction
x = np.arange(4)
width = 0.35

ax.bar(x[0], frac1[0]/frac1[1], width, label='2/7', color='skyblue')
ax.bar(x[1], frac2[0]/frac2[1], width, label='4/6', color='lightgreen')
ax.bar(x[2], result[0]/result[1], width, label='8/42', color='salmon')
ax.bar(x[3], simplified[0]/frac2[1], width, label='4/21', color='purple')

# Customize the plot
ax.set_ylabel('Fraction Value')
ax.set_title('Multiplication of Fractions')
ax.set_xticks(x)
ax.set_xticklabels(['2/7', '4/6', '8/42', '4/21'])
ax.legend()

# Add value labels on top of each bar
for i, v in enumerate([frac1[0]/frac1[1], frac2[0]/frac2[1], result[0]/result[1], simplified[0]/simplified[1]]):
    ax.text(i, v, f'{v:.3f}', ha='center', va='bottom')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Hier ist eine visuelle Darstellung unserer Bruchmultiplikation. Der blaue Balken repräsentiert 2 über 7, was ungefähr 0,286 ist.")
]

#only("2")[
#voiceover("Der grüne Balken zeigt 4 über 6, oder etwa 0,667.")
]

#only("3")[
#voiceover("Wenn wir diese Brüche multiplizieren, erhalten wir 8 über 42, dargestellt durch den lachsfarbenen Balken. Das ist etwa 0,190.")
]

#only("4")[
#voiceover("Schließlich repräsentiert der violette Balken unseren vereinfachten Bruch, 4 über 21, was denselben Wert wie 8 über 42 hat.")
]

#only("5")[
#voiceover("Diese visuelle Darstellung hilft uns zu sehen, dass das Multiplizieren von Brüchen oft zu einer kleineren Zahl führt, wie wir sehen können, dass der violette Balken kürzer ist als sowohl der blaue als auch der grüne Balken.")
]
]