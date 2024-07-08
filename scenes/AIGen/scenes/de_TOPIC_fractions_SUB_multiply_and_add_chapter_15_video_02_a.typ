#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Brüche multiplizieren]
#v(40pt)

#only("1-")[
$5/6 × 1/2 = ?$
]

#v(20pt)

#only("2-")[
$5/6 × 1/2 = (5 × 1) / (6 × 2)$
]

#v(20pt)

#only("3-")[
$= 5 / 12$
]

#v(20pt)

#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 4))

# Create data for the pie chart
sizes = [5, 7]
labels = ['5/12', '7/12']
colors = ['#ff9999', '#66b3ff']
explode = (0.1, 0)  # explode 1st slice

# Plot the pie chart
ax.pie(sizes, explode=explode, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle

plt.title('Fraction 5/12 Visualized')
plt.show()

```,
width: 300pt),
caption: [],
)
]
]
]

#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit dem Problem: Fünf Sechstel mal ein Halb multiplizieren.")
]

#only("2")[
#voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 5 mit 1 im Zähler und 6 mit 2 im Nenner.")
]

#only("3")[
#voiceover("Das ergibt fünf Zwölftel als unser Endergebnis. Lass uns das vereinfachen: Fünf geteilt durch zwölf kann nicht weiter vereinfacht werden, also ist dies unser vereinfachtes Ergebnis.")
]

#only("4")[
#voiceover("Um dies zu veranschaulichen, schauen wir uns ein Tortendiagramm an. Der blaue Abschnitt repräsentiert fünf Zwölftel des gesamten Kuchens. Das hilft uns zu sehen, dass fünf Zwölftel etwas weniger als die Hälfte ist.")
]
]