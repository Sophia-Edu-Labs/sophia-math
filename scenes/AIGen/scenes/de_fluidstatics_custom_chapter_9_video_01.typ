#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserkraftwerke]
#v(40pt)
#only("1-")[- Wandeln die potentielle Energie des Wassers in elektrische Energie um 💡]
#v(20pt)
#only("2-")[- Nutzen Turbinen, um die Energie zu gewinnen 🌊]
#only("1")[
#voiceover("Wasserkraftwerke sind darauf ausgelegt, die potentielle Energie des Wassers in nutzbare elektrische Energie umzuwandeln.")
]
#only("2")[
#voiceover("Diese Umwandlung wird durch den Einsatz von Turbinen erreicht, die die Energie des fließenden Wassers nutzen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Potentielle Energie]
// Der Titel "Potentielle Energie" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[- Energie, die im Wasser aufgrund seiner Höhe gespeichert ist 📏]
// Der Punkt über die potentielle Energie, die aufgrund der Höhe gespeichert ist, wird ab Folie 1 angezeigt
#v(20pt)
#only("2-")[$ E_p = m \cdot g \cdot h $]
// Die Formel für potentielle Energie wird ab Folie 2 angezeigt
#v(20pt)
#only("3-")[wobei $m$ = Masse, $g$ = Schwerkraft, $h$ = Höhe]
// Die Erklärung der Formelvariablen wird ab Folie 3 angezeigt
#only("1")[
#voiceover("Die potentielle Energie in diesem Zusammenhang ist die Energie, die im Wasser aufgrund seiner Höhe relativ zu einem tieferen Bezugspunkt gespeichert ist.")
]
#only("2")[
#voiceover("Diese potentielle Energie kann mit der Formel E_p = m \cdot g \cdot h berechnet werden.")
]
#only("3")[
#voiceover("In dieser Gleichung steht m für die Masse des Wassers, g für die Erdbeschleunigung und h für die Höhe des Wassers.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Turbinen]
// Der Titel "Turbinen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[- Wasser fließt durch Turbinen und bringt sie zum Rotieren 🔄]
// Der Punkt über das Wasser, das durch die Turbinen fließt und sie zum Rotieren bringt, wird ab Folie 1 angezeigt
#v(20pt)
#only("2-")[- Die Rotation treibt Generatoren an, um Strom zu erzeugen ⚡]
// Der Punkt über die Rotation, die Generatoren antreibt, wird ab Folie 2 angezeigt
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a simple illustration of a turbine
fig, ax = plt.subplots()
turbine = plt.Circle((0.5, 0.5), 0.2, color='skyblue')
ax.add_patch(turbine)
plt.arrow(0.5, 0.7, 0, -0.4, head_width=0.05, head_length=0.1, fc='k', ec='k')
plt.arrow(0.5, 0.3, 0, 0.4, head_width=0.05, head_length=0.1, fc='k', ec='k')
plt.text(0.6, 0.5, 'Turbine', fontsize=12)
plt.text(0.1, 0.8, 'Wasserfluss', fontsize=10)
plt.text(0.1, 0.2, 'Rotation', fontsize=10)
plt.axis('equal')
plt.axis('off')
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Wenn das Wasser durch die Turbinen fließt, bringt es sie zum Rotieren.")
]
#only("2")[
#voiceover("Diese Rotation treibt dann Generatoren an, die die mechanische Energie in elektrische Energie umwandeln.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wasserkraftwerke wandeln die potentielle Energie des Wassers in Strom um 🌊 → ⚡]
#v(20pt)
#only("2-")[- Potentielle Energie hängt von der Höhe des Wassers ab 📏]
#v(20pt)
#only("3-")[- Turbinen und Generatoren ermöglichen diese Energieumwandlung 🔄]
#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass Wasserkraftwerke die potentielle Energie des Wassers, die von seiner Höhe abhängt, in elektrische Energie umwandeln.")
]
#only("2")[
#voiceover("Je höher das Wasser, desto mehr potentielle Energie besitzt es.")
]
#only("3")[
#voiceover("Diese Umwandlung wird durch den Einsatz von Turbinen ermöglicht, die durch das fließende Wasser in Rotation versetzt werden, und Generatoren, die diese mechanische Energie in nutzbaren Strom umwandeln.")
]
]