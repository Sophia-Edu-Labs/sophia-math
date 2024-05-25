#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Definitionsbereich]
#v(40pt)
#align(center)[#only("2-")[#text()[$h(x) =$]] #only("2-3,5-")[#text(fill:black)[$sqrt(3x+9)$]]#only("4")[#text(fill:red)[$sqrt(3x+9)$]] #only("2-")[#text()[$-$]] #only("2-4,6-")[#text(fill:black)[$1/(x^2-4)$]]#only("5")[#text(fill:red)[$1/(x^2-4)$]]]
#v(40pt)
#only("3-")[#text(size: 30pt, weight: "bold")[Ansatz: Untersuche...]]
#v(40pt)
#only("4-")[- Radikand von $sqrt(3x+9)$]
#only("5-")[- Nenner von $1/(x^2-4)$]
#only("1")[
#voiceover("Super, das ist richtig. Bestimmen wir also den Definitionsbereich")
]
#only("2")[
#voiceover("der Funktion h von x gleich Wurzel aus 3x plus 9 minus 1 durch x Quadrat minus 4. Um den Definitionsbereich zu finden, überlegen wir uns, wo die Funktion nicht definiert ist.")
]
#only("3")[
#voiceover("Dafür betrachten wir die verschiedenen Elemente der Funktion einzeln.")
]
#only("4")[
#voiceover("Zuerst schauen wir uns den Radikanden der Wurzel an. Denn die Wurzel ist nur für nicht-negative Radikanden definiert.")
]
#only("5")[
#voiceover("Dann schauen wir uns den Nenner des Bruchs an. Denn der Nenner darf nicht 0 werden, da wir nicht durch 0 teilen können. Legen wir also los ...")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Definitionsbereich]
#v(40pt)
#align(center)[#only("-1")[$h(x) = sqrt(3x+9) - 1/(x^2-4)$]#only("2-4")[$h(x) =$#text(fill: red)[$sqrt(3x+9)$]$ - 1/(x^2-4)$]#only("5-")[$h(x) = sqrt(3x+9) -$#text(fill: red)[$1/(x^2-4)$]]]
#only("1")[#voiceover("Zuerst also die Wurzel. ")]
#only("2")[#voiceover("Der Radikand, also 3x plus 9, muss ")]
#only("3")[#voiceover("größer oder gleich 0 sein. Das bedeutet, ")]
#only("4")[#voiceover("dass x größer oder gleich -3 sein muss, denn nur dann ist 3 mal x größer oder gleich -9.")]
#only("5")[#voiceover("Nun zum Bruch. ")]
#only("6")[#voiceover("Der Nenner darf nicht 0 werden. Das bedeutet, ")]
#only("7")[#voiceover("dass x nicht gleich -2 oder 2 sein darf. Denn sonst ist x quadrat gleich vier, und dann wäre der Nenner, also x quadrat minus 4, gleich 0.")]
#v(10pt)
#only("3-4")[#align(center)[#text(fill:aqua)[⇓ Radikand $≥ 0$]]]
#only("6-7")[#align(center)[#text(fill:aqua)[⇓ Nenner$≠ 0$]]]
#v(10pt)
#only("4")[#align(center)[#text()[$x ≥ -3$]]]
#only("7-")[#align(center)[#text()[$x ≠ -2$ und $x ≠ 2$]]
]]
#slide()[
#text(size: 30pt, weight: "bold")[Definitionsbereich]
#v(40pt)
$ h(x) = sqrt(3x+9) - 1/(x^2-4) $
#v(40pt)
#only("1")[#voiceover("Daher besteht der Definitionsbereich von h aus ")]
#only("1-")[#text()[$ D = {x ∈ RR | x ≥ -3, x ≠ -2, x ≠ 2} $]]
#only("1")[#voiceover("allen reellen Zahlen x, die größer oder gleich -3 sind, aber nicht -2 oder 2.")]
]
#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#only("1")[
#voiceover("Lass uns den Definitionsbereich nun visualisieren.")
]
#v(60pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
def h(x):
    return np.sqrt(3*x+9) - 1/(x**2-4)
x = np.linspace(-5, 5, 400)
y = np.where((x >= -3) & (~((x > -2.1) & (x < -1.9)) | ((x > 1.9) & (x < 2.1))), h(x), np.nan)
plt.figure(figsize=(8, 6))
plt.plot(x, y)
plt.scatter([-2, 2], [0, 0], color='red', s=100, label='Nicht definiert') # Points of discontinuity

plt.plot([-5, -3], [0, 0], color='red', linewidth=4)
plt.scatter([-2, 2], [0, 0], color='red', s=100)
plt.xlim(-5, 5)
plt.ylim(-5, 5)
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
#voiceover("Hier seht ihr den Graphen der Funktion Wurzel aus 3x plus 9 minus 1 durch x Quadrat minus 4. Die roten Punkte markieren die Stellen, an denen die Funktion nicht definiert ist, nämlich bei x gleich -2 und x gleich 2. Die dicke rote Linie zeigt, dass die Funktion für x kleiner als -3 nicht definiert ist.")
]

#v(40pt)

#only("3-")[
Definitionsbereich: $ x ≥ -3, x ≠ -2, x ≠ 2 $
]

#only("3")[
#voiceover("Der Definitionsbereich ist also alle x größer oder gleich -3, außer x gleich -2 und x gleich 2.")
]

]
