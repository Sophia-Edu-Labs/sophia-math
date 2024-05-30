#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulik 101]
#v(40pt)
#only("1-")[- Nutzung von Flüssigkeitsdruck zum Heben schwerer Gegenstände 🏋️]
#v(20pt)
#only("2-")[- Druck wird gleichmäßig in alle Richtungen übertragen 🌀]
#only("1")[
#voiceover("Hydraulik ist ein faszinierendes Gebiet, das den Einsatz von Flüssigkeitsdruck zum Heben schwerer Gegenstände umfasst. Es ist ein mächtiges Werkzeug, das in vielen Anwendungen verwendet wird, von Wagenhebern bis hin zu schweren Maschinen.")
]
#only("2")[
#voiceover("Eines der wichtigsten Prinzipien der Hydraulik ist, dass der Druck in einer Flüssigkeit gleichmäßig in alle Richtungen übertragen wird. Das bedeutet, dass der Druck, der an einem Punkt in einer Flüssigkeit ausgeübt wird, in alle Richtungen gleichmäßig spürbar ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wie es funktioniert]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(6, 6))

# Zeichne das Hydrauliksystem
ax.plot([0, 0], [0, 2], 'k-', linewidth=2)  # Linke Wand
ax.plot([4, 4], [0, 2], 'k-', linewidth=2)  # Rechte Wand
ax.plot([0, 4], [0, 0], 'k-', linewidth=2)  # Boden
ax.plot([0, 4], [2, 2], 'k-', linewidth=2)  # Oberseite
ax.plot([1, 1], [0, 1], 'k-', linewidth=2)  # Kolben 1
ax.plot([3, 3], [0, 1.5], 'k-', linewidth=2)  # Kolben 2

# Pfeile für den Druck hinzufügen
ax.arrow(1, 0.5, 0, 0.4, head_width=0.1, head_length=0.2, fc='r', ec='r')
ax.arrow(1, 0.5, 0, -0.4, head_width=0.1, head_length=0.2, fc='r', ec='r')
ax.arrow(1, 0.5, 0.4, 0, head_width=0.1, head_length=0.2, fc='r', ec='r')
ax.arrow(1, 0.5, -0.4, 0, head_width=0.1, head_length=0.2, fc='r', ec='r')

ax.arrow(3, 0.75, 0, 0.4, head_width=0.1, head_length=0.2, fc='r', ec='r')
ax.arrow(3, 0.75, 0, -0.4, head_width=0.1, head_length=0.2, fc='r', ec='r')
ax.arrow(3, 0.75, 0.4, 0, head_width=0.1, head_length=0.2, fc='r', ec='r')
ax.arrow(3, 0.75, -0.4, 0, head_width=0.1, head_length=0.2, fc='r', ec='r')

ax.set_aspect('equal')
ax.set_xlim(-0.5, 4.5)
ax.set_ylim(-0.5, 2.5)
ax.axis('off')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist ein einfaches Diagramm eines Hydrauliksystems. Wenn Kraft auf den kleinen Kolben links ausgeübt wird, entsteht Druck in der Flüssigkeit. Dieser Druck wird dann gleichmäßig auf den größeren Kolben rechts übertragen.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mechanischer Vorteil]
#v(40pt)
#only("1-")[- Kleine Kraft auf kleinen Kolben 🔧]
#v(20pt)
#only("2-")[- Erzeugt große Kraft auf großem Kolben 💪]
#only("1")[
#voiceover("Der Vorteil der Hydraulik liegt in ihrer Fähigkeit, einen mechanischen Vorteil zu schaffen. Eine kleine Kraft, die auf einen kleinen Kolben ausgeübt wird, kann eine viel größere Kraft auf einen größeren Kolben erzeugen.")
]
#only("2")[
#voiceover("Dies liegt daran, dass der Druck im gesamten System gleich ist. Der gleiche Druck, der auf eine größere Fläche wirkt, führt zu einer größeren Kraft. So ermöglicht die Hydraulik das Heben schwerer Lasten mit relativ geringem Aufwand.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Anwendungen]
#v(40pt)
#only("1-")[- Wagenheber 🚗]
#v(20pt)
#only("2-")[- Baumaschinen 🏗️]
#v(20pt)
#only("3-")[- Hydraulikpressen 🗜️]
#only("1")[
#voiceover("Hydraulik wird in vielen alltäglichen Anwendungen eingesetzt. Zum Beispiel basiert der Wagenheber, den Du zum Reifenwechsel verwendest, auf hydraulischen Prinzipien.")
]
#only("2")[
#voiceover("Im Bauwesen nutzen schwere Maschinen wie Bagger und Bulldozer Hydrauliksysteme, um ihre Anbaugeräte zu betreiben.")
]
#only("3")[
#voiceover("Hydraulikpressen, die enorme Kräfte erzeugen können, werden in der Fertigung zum Beispiel zum Stanzen von Metallteilen eingesetzt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Hydraulik nutzt Flüssigkeitsdruck zum Heben schwerer Gegenstände 🏋️]
#v(20pt)
#only("2-")[- Druck wird gleichmäßig in alle Richtungen übertragen 🌀]
#v(20pt)
#only("3-")[- Mechanischer Vorteil: kleine Kraft erzeugt große Kraft 🔧 → 💪]
#only("1")[
#voiceover("Zusammenfassend geht es bei der Hydraulik darum, Flüssigkeitsdruck zu nutzen, um schwere Gegenstände zu heben.")
]
#only("2")[
#voiceover("Das Schlüsselprinzip ist, dass der Druck in einer Flüssigkeit gleichmäßig in alle Richtungen übertragen wird.")
]
#only("3")[
#voiceover("Und durch die Nutzung dieses Prinzips können Hydrauliksysteme einen mechanischen Vorteil schaffen, bei dem eine kleine Kraft einen großen Kraftaufwand erzeugen kann. Dies macht die Hydraulik zu einer so mächtigen und weit verbreiteten Technologie.")
]
]