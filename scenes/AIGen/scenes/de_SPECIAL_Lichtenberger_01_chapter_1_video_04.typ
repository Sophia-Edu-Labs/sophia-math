#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung des Wasserdrucks 🌊]
#v(40pt)
#only("1-")[- Der Wasserdruck nimmt mit der Tiefe zu 🏊‍♂️]
#only("1")[#voiceover("Lass uns rekapitulieren, was wir über den Wasserdruck gelernt haben. Erstens, der Wasserdruck nimmt zu, je tiefer Du gehst.")]
#v(20pt)
#only("2-")[- Der Druck nimmt ab, wenn der Wasserspiegel über einem Objekt sinkt 📉]
#only("2")[#voiceover("Zweitens, wenn der Wasserspiegel über einem Objekt sinkt, nimmt auch der Druck auf dieses Objekt ab.")]
#v(20pt)
#only("3-")[- Objekte, die im Wasser eingetaucht sind, werden von diesen Druckänderungen beeinflusst 🚢]
#only("3")[#voiceover("Schließlich werden Objekte, die im Wasser eingetaucht sind, von diesen Änderungen des Wasserdrucks beeinflusst.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Set up the figure
fig, ax = plt.subplots(figsize=(6, 6))

# Create a gradient background to represent water depth
depth = np.linspace(0, 1, 100)
pressure = depth
X, Y = np.meshgrid(np.linspace(0, 1, 100), np.linspace(0, 1, 100))
ax.contourf(X, Y, pressure[:, np.newaxis], cmap='Blues', alpha=0.8)

# Add a boat at the surface
boat_x = 0.5
boat_y = 0.9
boat_width = 0.2
boat_height = 0.1
ax.add_patch(plt.Rectangle((boat_x - boat_width/2, boat_y), boat_width, boat_height, facecolor='brown', edgecolor='black', linewidth=2))

# Add a fish at a certain depth
fish_x = 0.7
fish_y = 0.4
fish_size = 0.08
ax.add_patch(plt.Circle((fish_x, fish_y), fish_size, facecolor='orange', edgecolor='black', linewidth=2))

# Add arrows to represent pressure
arrow_x = 0.2
arrow_y = np.linspace(0.1, 0.8, 4)
for y in arrow_y:
    ax.arrow(arrow_x, y, 0.05, 0, head_width=0.03, head_length=0.03, fc='red', ec='red', linewidth=2)

# Add labels
ax.text(boat_x, boat_y + boat_height + 0.02, 'Boat', ha='center', va='bottom', fontsize=14)
ax.text(fish_x + fish_size + 0.02, fish_y, 'Fish', ha='left', va='center', fontsize=14)
ax.text(arrow_x - 0.02, arrow_y[-1], 'Pressure', ha='right', va='center', fontsize=14, color='red', rotation=90)

# Set up the axes
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_xticks([])
ax.set_yticks([])
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Hier ist eine visuelle Darstellung. Der blaue Farbverlauf stellt die Wassertiefe dar, wobei dunkleres Blau eine größere Tiefe und höheren Druck anzeigt. Die roten Pfeile zeigen den zunehmenden Druck, je tiefer Du gehst.")]
#v(20pt)
#only("2")[#voiceover("Das Boot an der Oberfläche erfährt weniger Druck im Vergleich zum Fisch weiter unten.")]
#v(20pt)
#only("3")[#voiceover("Wenn der Wasserspiegel sinken würde, würde auch der Druck auf den Fisch abnehmen.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Tiefe und Wasserdruck stehen in direktem Zusammenhang 🤿]
#only("1")[#voiceover("Die wichtigsten Erkenntnisse sind: Tiefe und Wasserdruck stehen in direktem Zusammenhang - je tiefer, desto höher der Druck.")]
#v(20pt)
#only("2-")[- Änderungen des Wasserspiegels beeinflussen den Druck auf eingetauchte Objekte 🌊]
#only("2")[#voiceover("Änderungen des Wasserspiegels beeinflussen den Druck, den eingetauchte Objekte erfahren.")]
#v(20pt)
#only("3-")[- Das Verständnis davon ist entscheidend für maritime Aktivitäten und Konstruktionen 🛳️]
#only("3")[#voiceover("Das Verständnis dieser Prinzipien ist entscheidend für alle maritimen Aktivitäten oder Konstruktionen.")]
]