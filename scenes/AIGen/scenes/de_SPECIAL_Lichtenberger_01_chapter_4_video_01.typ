#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb und Dichte]
#v(40pt)
#only("1-")[- Auftriebskraft 🌊]
#only("2-")[- Hängt von der Dichte des Objekts ab 🪨]
#only("1")[
#voiceover("Auftrieb, auch bekannt als Auftriebskraft, ist die Kraft, die eine Flüssigkeit auf ein darin eingetauchtes Objekt ausübt und es nach oben drückt.")
]
#only("2")[
#voiceover("Die Größe des Auftriebs variiert je nach Dichte des in der Flüssigkeit eingetauchten Objekts.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Prinzip]
#v(40pt)
#only("1-")[- Auftrieb = Gewicht der verdrängten Flüssigkeit]
#v(20pt)
#only("2-")[$ F_"buoyant" = rho_"fluid" V_"displaced" g $]
#only("1")[
#voiceover("Nach dem Prinzip von Archimedes ist der Auftrieb gleich dem Gewicht der vom Objekt verdrängten Flüssigkeit.")
]
#only("2")[
#voiceover("Mathematisch entspricht die Auftriebskraft der Dichte der Flüssigkeit multipliziert mit dem Volumen der verdrängten Flüssigkeit und der Erdbeschleunigung.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Objektdichte vs. Flüssigkeitsdichte]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

densities = ['$rho_"object" < rho_"fluid"$', '$rho_"object" = rho_"fluid"$', '$rho_"object" > rho_"fluid"$']
outcomes = ['Schwimmen', 'Neutrale Auftriebskraft', 'Sinken']

plt.figure(figsize=(8, 4))
plt.yticks(range(len(densities)), densities)
plt.xticks(range(len(outcomes)), outcomes)
plt.grid(True, axis='y')
plt.scatter([0, 1, 2], [0, 1, 2], color=['green', 'blue', 'red'], s=100)
plt.title('Objektverhalten basierend auf der Dichte')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Wenn die Dichte eines Objekts geringer ist als die der Flüssigkeit, wird es schwimmen. Wenn die Dichten gleich sind, hat das Objekt eine neutrale Auftriebskraft und bleibt schwebend. Wenn die Dichte des Objekts größer ist als die der Flüssigkeit, wird es sinken.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Auftrieb variiert mit der Dichte des Objekts 🪨]
#v(20pt)
#only("2-")[- Archimedes' Prinzip: $F_"buoyant" = rho_"fluid" V_"displaced" g$]
#v(20pt)
#only("3-")[- Objekt schwimmt, wenn $rho_"object" < rho_"fluid"$ 🛟]
#only("1")[
#voiceover("Zusammenfassend variiert der Auftrieb, der auf ein in eine Flüssigkeit eingetauchtes Objekt wirkt, je nach Dichte des Objekts.")
]
#only("2")[
#voiceover("Das Prinzip von Archimedes besagt, dass die Auftriebskraft der Dichte der Flüssigkeit multipliziert mit dem Volumen der verdrängten Flüssigkeit und der Erdbeschleunigung entspricht.")
]
#only("3")[
#voiceover("Ein Objekt wird schwimmen, wenn seine Dichte geringer ist als die der Flüssigkeit, eine neutrale Auftriebskraft haben, wenn die Dichten gleich sind, und sinken, wenn die Dichte des Objekts größer ist als die der Flüssigkeit.")
]
]