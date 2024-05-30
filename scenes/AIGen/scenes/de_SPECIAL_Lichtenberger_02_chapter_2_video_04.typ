#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb Rückblick 🌊]
#v(40pt)
#only("1-")[- Auftrieb hängt ab von:
  - Volumen des eingetauchten Objekts 📏
  - Dichte der Flüssigkeit 🧊]
#only("1")[
#voiceover("Lass uns rekapitulieren, was wir über den Auftrieb gelernt haben. Der Auftrieb hängt von zwei Hauptfaktoren ab: dem Volumen des eingetauchten Objekts und der Dichte der Flüssigkeit, in der sich das Objekt befindet.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Eisberge 🧊]
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

# Draw the water line
water_line = 0.1
ax.axhline(water_line, color='blue', linewidth=2, linestyle='-')

# Draw the iceberg
iceberg_height = 1
iceberg_width = 1
iceberg = plt.Rectangle((0, water_line), iceberg_width, iceberg_height-water_line, facecolor='white', edgecolor='black', linewidth=2)
ax.add_patch(iceberg)

# Annotate the water line
ax.annotate('Water Line', xy=(0.5, water_line), xytext=(0.5, 0.3), 
            arrowprops=dict(facecolor='black', shrink=0.05),
            fontsize=12, ha='center')

# Annotate the above water portion
ax.annotate('10.1%', xy=(0.5, (water_line+1)/2), xytext=(1.1, 0.6), 
            arrowprops=dict(facecolor='black', shrink=0.05),
            fontsize=12, ha='center')

# Annotate the below water portion
ax.annotate('89.9%', xy=(0.5, water_line/2), xytext=(1.1, 0.1), 
            arrowprops=dict(facecolor='black', shrink=0.05),
            fontsize=12, ha='center')

# Set axis limits and remove ticks
ax.set_xlim(-0.1, 2)
ax.set_ylim(-0.1, 1.1)
ax.set_xticks([])
ax.set_yticks([])

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dies beeinflusst, wie viel von einem Objekt, wie einem Eisberg, unter Wasser bleibt. Im Fall von Eisbergen sind etwa 89,9% des Eisbergs untergetaucht, während nur 10,1% über der Wasserlinie liegen.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Auftrieb wird bestimmt durch:
  - Eingetauchtes Volumen 📏
  - Dichte der Flüssigkeit 🧊
- Beeinflusst, wie viel von einem Objekt unter Wasser ist 🌊]
#only("1")[
#voiceover("Also denke daran, der Auftrieb wird durch das Volumen des eingetauchten Objekts und die Dichte der Flüssigkeit bestimmt, in der es sich befindet. Dies beeinflusst, wie viel von einem Objekt, wie einem Eisberg, unter Wasser bleibt.")
]
]