#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🌟]
#v(40pt)
#only("1-")[Das ist die richtige Antwort! Die Koordinaten des Vektors $v = mat(3; 4)$ in $RR^2$ sind tatsächlich $(3, 4)$. Lass uns sehen, warum.]
#only("1")[
#voiceover("Das war leider nicht korrekt. Die Koordinaten des Vektors v in R² sind 3 Komma 4. Lass uns sehen, warum.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vektorkoordinaten 📏]
#v(40pt)
#only("1-")[- Ein Vektor in $RR^2$ hat zwei Komponenten]
#v(20pt)
#only("2-")[- Diese Komponenten sind die Koordinaten]
#v(20pt)
#only("3-")[- Für $v = mat(3; 4)$ sind die Koordinaten $(3, 4)$]
#only("1")[
#voiceover("Ein Vektor in R 2 hat zwei Komponenten.")
]
#only("2")[
#voiceover("Diese Komponenten sind die Koordinaten des Vektors.")
]
#only("3")[
#voiceover("Für den Vektor v gleich der Matrix mit 3 in der ersten Zeile und 4 in der zweiten Zeile, sind die Koordinaten einfach 3 Komma 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

v = np.array([3, 4])

fig, ax = plt.subplots(figsize=(6, 6))

ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='v = (3, 4)')
ax.text(v[0]+0.1, v[1]+0.1, '(3, 4)', fontsize=12)

ax.set_xlim(0, 5)
ax.set_ylim(0, 5)
ax.grid(True)
ax.set_xticks(np.arange(0, 6, 1))
ax.set_yticks(np.arange(0, 6, 1))
ax.legend()
ax.set_xlabel('x')
ax.set_ylabel('y')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung des Vektors v in der xy-Ebene. Der blaue Pfeil stellt den Vektor dar, und der Punkt an der Spitze des Pfeils ist mit den Koordinaten 3 Komma 4 beschriftet.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Vektoren in $RR^2$ haben zwei Komponenten]
#v(20pt)
#only("2-")[- Diese Komponenten sind die Koordinaten]
#v(20pt)
#only("3-")[- Für $v = mat(3; 4)$ sind die Koordinaten $(3, 4)$]
#only("1")[
#voiceover("Zusammenfassend haben Vektoren in R 2 zwei Komponenten.")
]
#only("2")[
#voiceover("Diese Komponenten sind die Koordinaten des Vektors.")
]
#only("3")[
#voiceover("Für den spezifischen Vektor v gleich der Matrix mit 3 in der ersten Zeile und 4 in der zweiten Zeile, sind die Koordinaten 3 Komma 4.")
]
]