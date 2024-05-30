#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lass uns die wichtigsten Punkte über den Auftrieb und seine Beziehung zur Dichte und zum Volumen eines Objekts zusammenfassen.")
]
#text(size: 30pt, weight: "bold")[Auftrieb Rückblick 🌊]
// Der Titel "Auftrieb Rückblick" mit einem Wasserwellen-Emoji wird auf dieser Folie angezeigt
#v(40pt)

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Erstelle eine Figur und Achse
fig, ax = plt.subplots(figsize=(6, 6))

# Zeichne den Wasserstand
water_level = 0.7
ax.axhline(water_level, color='blue', linewidth=2, label='Wasserstand')

# Zeichne Objekte mit unterschiedlichen Dichten und Volumen
objects = [
    {'density': 0.5, 'volume': 0.2, 'label': 'Geringe Dichte, kleines Volumen'},
    {'density': 0.5, 'volume': 0.6, 'label': 'Geringe Dichte, großes Volumen'},
    {'density': 1.2, 'volume': 0.2, 'label': 'Hohe Dichte, kleines Volumen'},
    {'density': 1.2, 'volume': 0.6, 'label': 'Hohe Dichte, großes Volumen'}
]

for i, obj in enumerate(objects):
    y = water_level - obj['volume'] if obj['density'] < 1 else 0
    ax.bar(i, obj['volume'], bottom=y, width=0.8, align='center', 
           color='gray' if obj['density'] < 1 else 'brown', 
           edgecolor='black', linewidth=1, alpha=0.7)
    
    if obj['density'] < 1:
        ax.annotate('Schwimmt' if obj['volume'] > 0.4 else 'Sinkt', 
                    xy=(i, y + obj['volume'] / 2), xytext=(i + 0.1, y + obj['volume'] / 2), 
                    fontsize=12, color='green' if obj['volume'] > 0.4 else 'red')

ax.set_xticks(range(len(objects)))
ax.set_xticklabels([obj['label'] for obj in objects], rotation=45, ha='right', fontsize=12)
ax.set_ylim(0, 1)
ax.set_yticks([])
ax.spines['right'].set_visible(False)
ax.spines['top'].set_visible(False)
ax.legend(fontsize=12, loc='upper left')

plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
// Die Abbildung zeigt Objekte mit unterschiedlichen Dichten und Volumen im Wasser. Objekte mit geringer Dichte schwimmen, wenn sie ein großes Volumen haben, und sinken, wenn sie ein kleines Volumen haben. Objekte mit hoher Dichte sinken immer. Der Wasserstand ist mit einer blauen Linie markiert. Diese Abbildung wird ab Folie 2 angezeigt.

#only("2")[
#voiceover("Der Auftrieb eines Objekts im Wasser wird sowohl von seiner Dichte als auch von seinem Volumen beeinflusst. Lass uns einige Beispiele ansehen.")
]

#v(20pt)

#only("3-")[- Objekte mit der gleichen Dichte, aber unterschiedlichem Volumen verhalten sich unterschiedlich 🧱🪵]
// Der Aufzählungspunkt über Objekte mit der gleichen Dichte, aber unterschiedlichem Volumen wird ab Folie 3 angezeigt, mit Ziegel- und Holz-Emojis

#only("3")[
#voiceover("Objekte mit der gleichen Dichte, aber unterschiedlichem Volumen zeigen unterschiedliche Auftriebsverhalten. Ein Objekt mit größerem Volumen wird schwimmen, während ein Objekt mit kleinerem Volumen derselben Dichte sinken kann.")
]

#only("4-")[- Objekte mit geringer Dichte und großem Volumen schwimmen 🛟]
// Der Aufzählungspunkt über Objekte mit geringer Dichte und großem Volumen, die schwimmen, wird ab Folie 4 angezeigt, mit einem Rettungsfloß-Emoji

#only("4")[
#voiceover("Objekte mit geringer Dichte und großem Volumen, wie ein Rettungsfloß, schwimmen auf dem Wasser.")
]

#only("5-")[- Objekte mit geringer Dichte und kleinem Volumen können sinken 🪨]
// Der Aufzählungspunkt über Objekte mit geringer Dichte und kleinem Volumen, die sinken können, wird ab Folie 5 angezeigt, mit einem Stein-Emoji

#only("5")[
#voiceover("Jedoch können Objekte mit geringer Dichte und kleinem Volumen, wie ein kleiner Stein, trotzdem sinken.")
]

#only("6-")[- Objekte mit hoher Dichte sinken immer, unabhängig vom Volumen ⚓]
// Der Aufzählungspunkt über Objekte mit hoher Dichte, die immer sinken, wird ab Folie 6 angezeigt, mit einem Anker-Emoji

#only("6")[
#voiceover("Objekte mit hoher Dichte, wie ein Anker, sinken immer, unabhängig von ihrem Volumen.")
]

#only("7")[
#voiceover("Zusammengefasst hängt der Auftrieb eines Objekts vom Zusammenspiel zwischen seiner Dichte und seinem Volumen ab. Das Verständnis dieser Faktoren hilft vorherzusagen, ob ein Objekt im Wasser schwimmen oder sinken wird.")
]

]