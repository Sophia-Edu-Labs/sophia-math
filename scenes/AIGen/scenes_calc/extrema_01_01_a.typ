#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]
#set text(lang: "de")

#slide()[

#only("1")[
#voiceover("Klasse gemacht, das stimmt. Unsere Aufgabe ist es, die Extremstelle der Funktion")
]
Extremstellen untersuchen
#v(40pt)
#only("2-")[#text()[$ f(x) = (x-2)^2 - 5 $]]
#only("2")[
#voiceover("f von x gleich Klammer x minus zwei Klammer Quadrat minus fünf zu finden und zu bestimmen, welcher Art sie ist..")
]
]

#slide()[
#only("1")[
#voiceover("Zur Lösung dieser Aufgabe berechnen wir zunächst die erste Ableitung der Funktion. Anschließend setzen wir die Ableitung gleich null, um die kritischen Punkte zu finden. ")
]
#only("2")[
#voiceover("Dann überprüfen wir die kritischen Punkte mit der zweiten Ableitung, um die Art der Extremstelle zu bestimmen. Beginnen wir also mit dem Lösungsprozess!")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
#only("1-")[- $1$. Ableitung für kritische Punkte]
#only("2-")[- $2$. Ableitung für Art der Extremstelle]
]

#slide()[
#text(size: 30pt, weight: "bold")[1. Ableitung]
#v(40pt)
#only("1-")[$f(x) = (x-2)^2 - 5$]
#only("1")[#voiceover("Wir beginnen mit der gegebenen Funktion f von x gleich Klammer auf x minus zwei Klammer zu Quadrat minus fünf. Davon wollen wir die erste Ableitung berechnen. ")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Kettenregel]]]
#only("2")[#voiceover("Die Funktion ist eine Differenz aus einem Quadrat und einer Konstante. Für das Quadrat wenden wir die Kettenregel an. ")]
#v(10pt)
#only("3-")[$f'(x) = 2(x-2)$]
#only("3")[#voiceover("Die Ableitung von x minus zwei Quadrat ist zwei mal x minus zwei. Die Ableitung von minus fünf ist null, also fällt sie weg.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kritische Punkte]
#v(40pt)
$f'(x) = 2(x-2)$
#v(10pt)
#only("1-")[#align(center)[#text(fill:aqua)[⇓ Gleich Null setzen]]]
#only("1")[#voiceover("Um die kritischen Punkte zu finden, setzen wir dann die erste Ableitung gleich null.")]
#v(10pt)
#only("2-")[$0 = 2(x-2)$]
#only("2")[#voiceover("Dann erhalten wir Null gleich zwei mal Klammer x minus zwei.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Lineare Gleichung]]]
#only("3")[#voiceover("Das ist eine einfache lineare Gleichung, die wir durch Umformen lösen können.")]
#v(10pt)
#only("4-")[$x = 2$]
#only("4")[#voiceover("Dann erhalten wir x gleich zwei als einzige Nullstelle, und somit auch als einzigen kritischen Punkt.")]
#only("4")[#voiceover("Jetzt wo wir den kritischen Punkt gefunden haben, setzen wir diesen in die zweite Ableitung ein, um die Art des kritischen Punktes zu ermitteln.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[2. Ableitung]
#v(40pt)
$f'(x) = 2(x-2)$
#v(10pt)
#only("1-")[#align(center)[#text(fill:aqua)[⇓ Ableiten]]]
#only("1")[#voiceover("Beginnen wir also damit, die Ableitung erneut abzuleiten.")]

#only("2-")[$f''(x) = 2$]
#only("2")[#voiceover("Die Ableitung von zwei mal Klammer x minus zwei ist einfach zwei.")]

#only("3-")[#align(center)[#text(fill:aqua)[⇓ Kritischen Punkt einsetzen]]]
#only("3")[#voiceover("Als nächstes setzen wir den kritischen Punkt in die zweite Ableitung ein, um die Art der Extremstelle zu bestimmen.")]
#v(10pt)
#only("4-")[$f''(2) = 2$	→ Minimum]
#only("4")[#voiceover("Für x gleich zwei ist die zweite Ableitung positiv. Das bedeutet, dass wir für x gleich zwei ein lokales und in diesem Fall sogar globales Minimum haben. ")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]

#only("1")[
  #voiceover("Lasst uns die Extremstelle nun visualisieren.")
]
#v(60pt)
#only("2-")[
#box()[
  #morphchildren(id: "plot")[
#figure(
  pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Defining the function
def f(x):
    return (x-2)**2 - 5

# Generating x values
x = np.linspace(-2, 6, 400)

# Generating y values
y = f(x)

# Plotting the function
plt.figure(figsize=(8, 6))
plt.plot(x, y)

# Marking the extremum
plt.scatter(2, f(2), color='red', s=100)  # Point of extremum

plt.grid(True)

# Showing the plot
plt.show()
    ```, 
  width: 360pt),
caption: [$f(x)=(x-2)^2 - 5$] 
)
]
]
]
#only("2")[
  #voiceover("Hier seht ihr den Graphen der Funktion Klammer x minus zwei Klammer Quadrat minus fünf. Der rote Punkt markiert die Extremstelle, die wir gefunden haben.")
]

#v(40pt)
#only("3-")[
- Globales Minimum bei  $x = 2$
]
#only("3")[
#voiceover("Wir haben also ein globales Minimum bei x gleich zwei gefunden.")
]
]