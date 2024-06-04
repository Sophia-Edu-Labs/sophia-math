#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulisches Hebesystem 🏗️]
#v(40pt)
#only("1-")[- Wird verwendet, um schwere Gegenstände zu heben 🏋️]
#only("1")[
#voiceover("Ein hydraulisches Hebesystem wird verwendet, um schwere Gegenstände wie Autos oder Maschinen zu heben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Prinzipien 🔑]
#v(40pt)
#only("1-")[- Kraft wird durch eine Flüssigkeit in einem geschlossenen System übertragen]
#v(20pt)
#only("2-")[- Nutzt die Prinzipien von Druck und Fläche]
#only("1")[
#voiceover("Es funktioniert, indem Kraft durch eine Flüssigkeit in einem geschlossenen System übertragen wird.")
]
#only("2")[
#voiceover("Das System nutzt die Prinzipien von Druck und Fläche, um die Hebekraft zu erzeugen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wie es funktioniert 🛠️]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(6, 6))

ax.set_xlim(0, 10)
ax.set_ylim(0, 10)
ax.set_aspect('equal')

ax.text(2, 8, 'Hydraulikflüssigkeit', fontsize=12, color='blue')
ax.text(6, 2, 'Hebebühne', fontsize=12, color='green')

ax.add_patch(plt.Rectangle((1, 7), 4, 2, fill=True, color='blue', alpha=0.5))
ax.add_patch(plt.Rectangle((5, 1), 4, 2, fill=True, color='green', alpha=0.5))

ax.arrow(3, 6, 0, -2, head_width=0.5, head_length=0.5, fc='k', ec='k')
ax.text(3.2, 5, 'Kraft', fontsize=12)

ax.arrow(7, 4, 0, 2, head_width=0.5, head_length=0.5, fc='k', ec='k')
ax.text(7.2, 5, 'Heben', fontsize=12)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Wenn eine Kraft auf die Flüssigkeit in einem kleineren Zylinder ausgeübt wird, entsteht Druck. Dieser Druck wird durch die Flüssigkeit auf einen größeren Zylinder übertragen, wo er über eine größere Fläche wirkt. Diese Kraftmultiplikation ermöglicht es, schwere Gegenstände mit relativ geringem Kraftaufwand zu heben.")
]
]

Keine Korrekturen notwendig.]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Hydraulisches Hebesystem: hebt schwere Gegenstände 🏋️]
#v(20pt)
#only("2-")[- Nutzt Kraft, die durch Flüssigkeit in einem geschlossenen System übertragen wird 💧]
#v(20pt)
#only("3-")[- Nutzt die Prinzipien von Druck und Fläche 📏]
#only("1")[
#voiceover("Zusammenfassend wird ein hydraulisches Hebesystem verwendet, um schwere Gegenstände zu heben.")
]
#only("2")[
#voiceover("Es nutzt die Kraft, die durch eine Flüssigkeit in einem geschlossenen System übertragen wird.")
]
#only("3")[
#voiceover("Das System nutzt die Prinzipien von Druck und Fläche, um die Hebekraft zu erzeugen, wodurch schwere Gegenstände mit relativ geringem Kraftaufwand gehoben werden können.")
]
]