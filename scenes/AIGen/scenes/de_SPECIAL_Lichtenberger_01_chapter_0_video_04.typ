#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Druck Rückblick 🌊]

#v(40pt)

#only("1-")[- Kraft pro Flächeneinheit 💪]
#only("2-")[- Beeinflusst durch Umwelt und Tiefe 🌍]
#only("3-")[- Saugnäpfe 🪣]
#only("4-")[- Luftdruck an verschiedenen Seen 🏔️]

#only("1")[
#voiceover("Lass uns rekapitulieren, was wir über Druck gelernt haben. Druck wird definiert als die Kraft, die pro Flächeneinheit ausgeübt wird.")
]

#only("2")[
#voiceover("Druck wird von verschiedenen Umweltfaktoren beeinflusst und ändert sich mit der Tiefe.")
]

#only("3")[
#voiceover("Wir haben gesehen, wie Saugnäpfe aufgrund des Druckunterschieds innerhalb und außerhalb des Saugnapfes funktionieren.")
]

#only("4")[
#voiceover("Wir haben auch gelernt, dass der Luftdruck an verschiedenen Seen je nach deren Höhe variiert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Punkte 🔑]

#v(40pt)

#only("1-")[$ "Druck" = "Kraft" / "Fläche" $]

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
depths = [0, 10, 20, 30, 40, 50]
pressures = [1, 2, 3, 4, 5, 6]

# Create plot
plt.figure(figsize=(6, 4))
plt.plot(depths, pressures, marker='o')
plt.xlabel('Tiefe (m)')
plt.ylabel('Druck (atm)')
plt.title('Druck vs Tiefe')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]

#only("3-")[Saugnäpfe: $p_"innen" < p_"außen"$ 🪣]

#only("4-")[Luftdruck: $p_"hohe Höhe" < p_"niedrige Höhe"$ 🏔️]

#only("1")[
#voiceover("Die wichtigsten Punkte sind: Druck ist gleich Kraft geteilt durch Fläche.")
]

#only("2")[
#voiceover("Druck steigt linear mit der Tiefe, wie in diesem Diagramm gezeigt.")
]

#only("3")[
#voiceover("Saugnäpfe funktionieren, weil der Druck innerhalb des Saugnapfes niedriger ist als der Außendruck.")
]

#only("4")[
#voiceover("Der Luftdruck ist in größeren Höhen niedriger als in niedrigeren Höhen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit 🎉]

#v(40pt)

#only("1-")[Das Verständnis von Druck ist entscheidend! 🌟]

#only("2-")[Es hilft, viele Phänomene zu erklären 🌍]

#only("3-")[Von Saugnäpfen bis zum Luftdruck 🪣🏔️]

#only("4-")[Erforsche und lerne weiter! 🚀]

#only("1")[
#voiceover("Zusammenfassend ist das Verständnis des Druckbegriffs entscheidend.")
]

#only("2")[
#voiceover("Es hilft uns, viele Phänomene in der Welt um uns herum zu erklären.")
]

#only("3")[
#voiceover("Von der Funktionsweise von Saugnäpfen bis zur Variation des Luftdrucks mit der Höhe.")
]

#only("4")[
#voiceover("Erforsche und lerne weiter über Druck und seine Anwendungen!")
]
]