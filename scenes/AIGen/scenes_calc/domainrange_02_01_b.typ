#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Definitionsbereich]
#v(40pt)


#align(center)[#only("2-")[$g(x) =$]  #only("2-3,5-")[ #text(fill:black)[$sqrt(x-1)$]]#only("4")[#text(fill:red)[$sqrt(x-1)$]]  #only("2-")[$+$]  #only("2-4,6-")[#text(fill:black)[$1/(x-2)$]]#only("5")[#text(fill:red)[$1/(x-2)$]]]
#v(40pt)

#only("3-")[#text(size: 30pt, weight: "bold")[Ansatz: Untersuche...]]
#v(40pt)
#only("4-")[- Radikand von $sqrt(x-1)$]
#only("5-")[- Nenner von $1/(x-2)$]


#only("1")[
#voiceover("Das ist leider falsch... Wir suchen ja den Definitionsbereich")
]
#only("2")[
#voiceover("der Funktion g von x gleich Wurzel aus x minus 1 plus 1 durch x minus 2. Um den Definitionsbereich zu finden, überlegen wir uns, wo die Funktion nicht definiert ist.")
]
#only("3")[
#voiceover("Dafür betrachten wir die verschiedenen Elemente der Funktion einzeln.")
]
#only("4")[
#voiceover("Zuerst schauen wir uns den Radikand der Wurzel an. Denn die Wurzel ist in den reelen Zahlen nur definiert, wenn der Radikand, also der Ausdruck unter der Wurzel größer oder gleich 0 ist.")
]
#only("5")[
#voiceover("Dann schauen wir uns den Nenner des Bruchs an. Denn der Nenner darf nicht 0 werden, da wir nicht durch 0 teilen können. Legen wir also los ...")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Definitionsbereich]

#v(40pt)

#align(center)[#only("-1")[$g(x) = sqrt(x-1) + 1/(x-2)$]#only("2-4")[$g(x) = $#text(fill: red)[$sqrt(x-1)$]$ + 1/(x-2)$]#only("5-")[$g(x) = sqrt(x-1) + $#text(fill: red)[$1/(x-2)$]]]

#only("1")[#voiceover("Zuerst also die Wurzel. ")]
#only("2")[#voiceover("Der Wurzelinhalt, also x minus 1, darf ")]
#only("3")[#voiceover("nicht negativ sein. Sonst hätten wir die Wurzel einer negativen Zahl. Das bedeutet, ")]
#only("4")[#voiceover("dass x größer oder gleich 1 sein muss.")]
#only("5")[#voiceover("Nun zum Bruch. ")]
#only("6")[#voiceover("Der Nenner darf nicht 0 werden. Das bedeutet, ")]
#only("7")[#voiceover("dass x nicht gleich 2 sein darf.")]

#v(10pt)

#only("3-4")[#align(center)[#text(fill:aqua)[⇓ Wurzelinhalt $≥0$]]]
#only("6-7")[#align(center)[#text(fill:aqua)[⇓ Nenner $≠0$]]]

#v(10pt)

#only("4")[#align(center)[#text()[$x≥1$]]]
#only("7-")[#align(center)[#text()[$x≠2$]]


]]

#slide()[

#text(size: 30pt, weight: "bold")[Definitionsbereich]

#v(40pt)

$g(x) = sqrt(x-1) + 1/(x-2)$

#v(40pt)

#only("1")[#voiceover("Damit ist der Definitionsbereich von g: ")]

#only("1-")[#text()[$ D = \{x ∈ RR | x ≥ 1, x ≠ 2\}$]]

#only("1")[#voiceover("x ist eine reelle Zahl, die größer oder gleich 1 und ungleich 2 ist.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Visualisierung]

#only("1")[
#voiceover("Lasst uns den Definitionsbereich nun visualisieren.")
]

#v(60pt)

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def g(x):
    return np.sqrt(x-1) + 1/(x-2)

x = np.linspace(-5, 5, 400)
y = np.where((x >= 1) & (x != 2), g(x), np.nan)

plt.figure(figsize=(8, 6))
plt.plot(x, y)

plt.scatter([2], [0], color='red', s=100, label='Nicht definiert') # Point of discontinuity
plt.scatter([1], [g(1)], color='green', s=100, label='Definitionsbereich beginnt') # Start of domain

plt.grid(True)
plt.legend()

plt.show()
```,
width: 360pt),
)
]
]
]

#only("2")[
#voiceover("Hier seht ihr den Graphen der Funktion Wurzel aus x minus 1 plus 1 durch x minus 2. Der rote Punkt markiert die Stelle, an der die Funktion nicht definiert ist, nämlich bei x gleich 2. Der grüne Punkt zeigt, wo der Definitionsbereich beginnt, nämlich bei x gleich 1.")
]

#v(40pt)

#only("3-")[
Definitionsbereich: $x ≥ 1, x ≠ 2$
]

#only("3")[
#voiceover("Der Definitionsbereich ist also alle x größer oder gleich 1, außer x gleich 2.")
]
]