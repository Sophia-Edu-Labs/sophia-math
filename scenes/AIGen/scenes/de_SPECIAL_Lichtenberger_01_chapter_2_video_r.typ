#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Druck und Auftrieb bei Tiefenänderungen 🌊]

#only("1-")[
- Druck nimmt mit der Tiefe zu 📈
]
#only("2-")[
- Auftrieb bleibt konstant, wenn das Volumen unverändert bleibt 🎈
]

#only("1")[
#voiceover("In dieser Zusammenfassung werden wir noch einmal betrachten, wie sich Druck und Auftrieb bei Tiefenänderungen im Wasser verhalten.")
]

#only("2")[
#voiceover("Wenn Objekte tiefer ins Wasser eintauchen, nimmt der Druck, den sie erfahren, erheblich zu. Dies liegt daran, dass das Gewicht des Wassers über ihnen mit der Tiefe zunimmt.")
]

#only("3")[
#voiceover("Wenn sich jedoch das Volumen des Objekts beim Bewegen durch das Wasser nicht ändert, bleibt sein Auftrieb relativ konstant.")
]

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```

import matplotlib.pyplot as plt
import numpy as np

# Set up the figure and axes
fig, ax = plt.subplots(figsize=(6, 6))

# Set the limits for x and y axes
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Draw the water surface
ax.hlines(y=9, xmin=0, xmax=10, linewidth=2, color='blue')

# Draw the object at different depths
depths = [8, 6, 4, 2]
for depth in depths:
    circle = plt.Circle((5, depth), 0.5, color='red', alpha=0.7)
    ax.add_artist(circle)
    ax.annotate(f'Pressure ↑', xy=(6, depth), fontsize=12, color='black')
    ax.annotate(f'Buoyancy =', xy=(2, depth), fontsize=12, color='black')

# Add labels and title
ax.set_xlabel('Horizontal Position', fontsize=14)
ax.set_ylabel('Depth', fontsize=14)
ax.set_title('Pressure and Buoyancy Changes with Depth', fontsize=16)

# Invert the y-axis to show depth increasing downwards
ax.invert_yaxis()

# Display the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [],
)
]
]

#only("3")[
#voiceover("Dies liegt daran, dass der Auftrieb vom Volumen des vom Objekt verdrängten Wassers abhängt, welches gleich bleibt, wenn sich die Größe und Form des Objekts nicht ändern.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🗝️]

#only("1-")[
- Druck nimmt linear mit der Tiefe zu 📏
]
#only("2-")[
- Auftrieb wird durch das verdrängte Wasservolumen bestimmt 💧
]
#only("3-")[
- Konstantes Volumen ⇒ konstanter Auftrieb 🧊
]

#only("1")[
#voiceover("Zusammenfassend solltest Du Dir merken, dass der Druck im Wasser linear mit der Tiefe zunimmt. Je tiefer ein Objekt geht, desto mehr Druck erfährt es.")
]

#only("2")[
#voiceover("Der Auftrieb hingegen wird durch das Volumen des vom Objekt verdrängten Wassers bestimmt.")
]

#only("3")[
#voiceover("Solange das Volumen des Objekts konstant bleibt, bleibt auch sein Auftrieb konstant, unabhängig von der Tiefe, in der es sich befindet.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Fazit 🎓]

#only("1-")[
Das Verständnis von Druck- und Auftriebsänderungen mit der Tiefe ist entscheidend für:

- Unterwassertechnik 🏗️
- Meeresbiologie 🐠
- Wassersport und Aktivitäten 🏊‍♂️
]

#only("1")[
#voiceover("Das Verständnis, wie sich Druck und Auftrieb mit der Tiefe ändern, ist entscheidend für verschiedene Bereiche wie Unterwassertechnik, Meeresbiologie und Wassersport und -aktivitäten.")
]

#only("2")[
#voiceover("Wenn Du diese Prinzipien im Hinterkopf behältst, kannst Du das Verhalten von Objekten und Organismen in aquatischen Umgebungen besser verstehen und vorhersagen.")
]

]