#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzeln von negativen Zahlen]
#v(40pt)
#only("1-")[
- Für gerade n ist $root(n, -a)$ komplex 🌀
]
#only("1")[
#voiceover("Wenn wir die n-te Wurzel einer negativen Zahl ziehen und n gerade ist, ist das Ergebnis eine komplexe Zahl.")
]
#v(20pt)
#only("2-")[
- Beispiel: $root(4, -16) = 2i$ 🧮
]
#only("2")[
#voiceover("Zum Beispiel ist die 4. Wurzel von -16 gleich 2i, wobei i die imaginäre Einheit ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the real and imaginary axes
ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('center')
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

# Plot the complex number 2i
ax.plot(0, 2, 'ro', markersize=10)
ax.text(0.1, 2.1, '2i', fontsize=14)

# Set the limits and labels
ax.set_xlim(-3, 3)
ax.set_ylim(-3, 3)
ax.set_xlabel('Real', fontsize=14)
ax.set_ylabel('Imaginary', fontsize=14)

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der komplexen Zahl 2i auf der komplexen Ebene. Der Realteil ist 0 und der Imaginärteil ist 2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[
- n-te Wurzeln von negativen Zahlen sind komplex, wenn n gerade ist 🌀
]
#only("1")[
#voiceover("Zusammenfassend: Wenn wir die n-te Wurzel einer negativen Zahl ziehen und n gerade ist, ist das Ergebnis eine komplexe Zahl.")
]
#v(20pt)
#only("2-")[
- Dargestellt auf der komplexen Ebene 📈
]
#only("2")[
#voiceover("Diese komplexen Zahlen können auf der komplexen Ebene dargestellt werden, mit Real- und Imaginärachsen.")
]
#v(20pt)
#only("3-")[
- Wichtiger Begriff in der Mathematik 🧮
]
#only("3")[
#voiceover("Das Verständnis des Verhaltens von n-ten Wurzeln negativer Zahlen ist ein wichtiger Begriff in der Mathematik, insbesondere im Umgang mit komplexen Zahlen.")
]
]