#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[

#text(size: 30pt, weight: "bold")[Definitionsbereich]

#v(40pt)

#align(center)[#only("2-")[#text()[$f(x) =$]] #only("2-3,5-")[#text(fill:black)[$ln(4-x)$]]#only("4")[#text(fill:red)[$ln(4-x)$]] #only("2-")[#text()[$+$]] #only("2-4,6-")[#text(fill:black)[$1/x$]]#only("5")[#text(fill:red)[$1/x$]]]

#v(40pt)

#only("3-")[#text(size: 30pt, weight: "bold")[Ansatz: Untersuche...]]

#v(40pt)

#only("4-")[- Argument von $ln(4-x)$]

#only("5-")[- Nenner von $1/x$]

#only("1")[
#voiceover("Das ist leider falsch... Bestimmen wir also den Definitionsbereich.")
]

#only("2")[
#voiceover("der Funktion f von x gleich Logarithmus von 4 minus x plus 1 durch x. Um den Definitionsbereich zu finden, überlegen wir uns, wo die Funktion nicht definiert ist.")
]

#only("3")[
#voiceover("Dafür betrachten wir die verschiedenen Elemente der Funktion einzeln.")
]

#only("4")[
#voiceover("Zuerst schauen wir uns das Argument des Logarithmus an. Denn der Logarithmus ist nur für positive Argumente definiert.")
]

#only("5")[
#voiceover("Dann schauen wir uns den Nenner des Bruchs an. Denn der Nenner darf nicht 0 werden, da wir nicht durch 0 teilen können. Legen wir also los ...")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Definitionsbereich]

#v(40pt)

#align(center)[#only("-1")[$f(x) = ln(4-x) + 1/x$]#only("2-4")[$f(x) =$#text(fill: red)[$ln(4-x)$]$+ 1/x$]#only("5-")[$f(x) = ln(4-x) +$#text(fill: red)[$1/x$]]]

#only("1")[#voiceover("Zuerst also der Logarithmus. ")]

#only("2")[#voiceover("Das Argument des Logarithmus, also 4 minus x, muss ")]

#only("3")[#voiceover("größer als 0 sein. Das bedeutet, ")]

#only("4")[#voiceover("dass x kleiner als 4 sein muss.")]

#only("5")[#voiceover("Nun zum Bruch. ")]

#only("6")[#voiceover("Der Nenner darf nicht 0 werden. Das bedeutet, ")]

#only("7")[#voiceover("dass x nicht gleich 0 sein darf.")]

#v(10pt)

#only("3-4")[#align(center)[#text(fill:aqua)[⇓ Argument > 0]]]

#only("6-7")[#align(center)[#text(fill:aqua)[⇓ Nenner$≠ 0$]]]

#v(10pt)

#only("4")[#align(center)[#text()[$x < 4$]]]

#only("7-")[#align(center)[#text()[$x ≠ 0$]]

]]

#slide()[

#text(size: 30pt, weight: "bold")[Definitionsbereich]

#v(40pt)

$ f(x) = ln(4-x) + 1/x $

#v(40pt)

#only("1")[#voiceover("Daher besteht der Definitionsbereich von f aus ")]

#only("1-")[#text()[$ D = \{x ∈ RR | x < 4, x ≠ 0\} $]]

#only("1")[#voiceover("allen reellen Zahlen x, die kleiner als 4 und ungleich 0 sind.")]

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

def f(x):
    return np.log(4-x) + 1/x

x = np.linspace(-5, 5, 400)
y = np.where((x < 4) & (~((x > -0.1) & (x < 0.1))), f(x), np.nan)

plt.figure(figsize=(8, 6))
plt.plot(x, y)

plt.scatter([0], [0], color='red', s=100, label='Nicht definiert') # Point of discontinuity
plt.scatter([4], [0], color='red', s=100) # Point of discontinuity

# Drawing a red line at y=0 from x=4 to x=5
plt.plot([4, 5], [0, 0], color='red', linewidth=4) # This replaces the plt.axhline call for this specific segment

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
#voiceover("Hier seht ihr den Graphen der Funktion Logarithmus von 4 minus x plus 1 durch x. Der rote Punkte markiert die Stellen, an der die Funktion nicht definiert ist, nämlich bei x gleich 0. Die dicke rote Linie zeigt, dass die Funktion für x größer oder gleich 4 nicht definiert ist.")
]

#v(40pt)

#only("3-")[
Definitionsbereich: $ x < 4, x ≠ 0 $
]

#only("3")[
#voiceover("Der Definitionsbereich ist also alle x kleiner als 4, außer x gleich 0.")
]

]