#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
Ist $root(4, -16)$ eine reelle Zahl?
#v(40pt)
#only("2-")[Richtig! 🎉]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[- $root(4, -16) = root(4, 16 * (-1))$]
#v(20pt)
#only("2-")[- $= root(4, 16) * root(4, -1)$]
#v(20pt)
#only("3-")[- $= 2 * i$]
#v(20pt)
#only("4-")[- $= 2i$, was nicht reell ist 🚫]
#only("1")[
#voiceover("Lass uns das Schritt für Schritt lösen. Zuerst können wir die negative 16 als 16 mal minus 1 umschreiben.")
]
#only("2")[
#voiceover("Unter Verwendung der Eigenschaft von Wurzeln, dass die 4. Wurzel eines Produkts das Produkt der 4. Wurzeln ist, können wir dies in die 4. Wurzel von 16 mal die 4. Wurzel von minus 1 aufteilen.")
]
#only("3")[
#voiceover("Die 4. Wurzel von 16 ist 2 und die 4. Wurzel von minus 1 ist die imaginäre Einheit i.")
]
#only("4")[
#voiceover("Also ist die 4. Wurzel von minus 16 gleich 2i, was eine imaginäre Zahl ist und keine reelle Zahl.")
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

# Plot the real axis
ax.axhline(0, color='black', lw=1)
ax.text(0.1, 0.1, 'Reelle Achse', fontsize=12)

# Plot the imaginary axis
ax.axvline(0, color='black', lw=1)
ax.text(0.1, 0.9, 'Imaginäre Achse', fontsize=12)

# Plot the point 2i
ax.plot(0, 2, 'ro', markersize=10)
ax.text(0.1, 2.1, '2i', fontsize=14)

# Set limits and remove ticks
ax.set_xlim(-1, 1)
ax.set_ylim(-1, 3)
ax.set_xticks([])
ax.set_yticks([])

# Add a title
ax.set_title('Komplexe Ebene', fontsize=16)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Wir können dies auf der komplexen Ebene visualisieren. Die reelle Achse ist die horizontale Linie und die imaginäre Achse ist die vertikale Linie. Die Zahl 2i befindet sich 2 Einheiten oben auf der imaginären Achse, nicht auf der reellen Achse.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- $root(4, -16) = 2i$ 🧮]
#v(20pt)
#only("2-")[- Imaginäre Zahlen sind nicht reell 🚫]
#v(20pt)
#only("3-")[- Gerade Wurzeln von negativen Zahlen sind imaginär 🌌]
#only("1")[
#voiceover("Zusammenfassend ist die 4. Wurzel von minus 16 gleich 2i.")
]
#only("2")[
#voiceover("Imaginäre Zahlen sind keine reellen Zahlen.")
]
#only("3")[
#voiceover("Im Allgemeinen sind gerade Wurzeln von negativen Zahlen immer imaginär, nicht reell.")
]
]