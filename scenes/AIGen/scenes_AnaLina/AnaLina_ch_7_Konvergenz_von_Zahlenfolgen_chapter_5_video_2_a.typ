#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz]
#v(40pt)
#only("1-")[Eine Zahlenfolge konvergiert, wenn sie sich einem ______ nähert.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) bestimmten Wert]#only("2-")[#text(fill:green)[a) bestimmten Wert]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) unendlichen Wert]#only("3-")[#text(fill:red)[b) unendlichen Wert]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) beliebigen Wert]#only("4-")[#text(fill:red)[c) beliebigen Wert]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) keiner Antwort ist richtig]#only("5-")[#text(fill:red)[d) keiner Antwort ist richtig]]
#v(40pt)

#only("1")[#voiceover("Das ist korrekt, super gemacht!")]
#only("2")[#voiceover("a) bestimmten Wert ist die richtige Antwort. Eine Zahlenfolge konvergiert tatsächlich, wenn sie sich einem bestimmten Wert nähert.")]
#only("3")[#voiceover("b) unendlichen Wert ist falsch. Eine konvergente Folge nähert sich einem endlichen Wert, nicht einem unendlichen.")]
#only("4")[#voiceover("c) beliebigen Wert ist auch falsch. Die Folge konvergiert nicht gegen einen beliebigen Wert, sondern gegen einen spezifischen.")]
#only("5")[#voiceover("Und d) keiner Antwort ist richtig ist ebenfalls falsch, da es eine korrekte Antwort gibt, nämlich a).")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)  
a_n = 1 + 1/n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1 + 1/n$')
plt.axhline(y=1, color='r', linestyle='--', label='Grenzwert')
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Betrachte die Folge $a_n = 1 + 1/n$.]
#v(20pt)
#only("2-")[- Für große $n$ wird $1/n$ immer kleiner 📉]
#only("3-")[- $a_n$ nähert sich dem Wert $1$ 🎯]
#only("4-")[- Die Folge #text(weight: "bold")[konvergiert] gegen den #text(fill:red)[bestimmten Wert] $1$.]

#only("1")[#voiceover("Schauen wir uns ein Beispiel an, um die Konvergenz zu veranschaulichen.")]
#only("2")[#voiceover("In diesem Graphen sehen wir die Folge a_n gleich 1 plus 1 durch n. Für große n wird 1 durch n immer kleiner.")]
#only("3")[#voiceover("Dadurch nähert sich a_n immer mehr dem Wert 1, der durch die rote gestrichelte Linie dargestellt ist.")]
#only("4")[#voiceover("Die Folge konvergiert also gegen den bestimmten Wert 1. Das ist genau das, was wir unter Konvergenz verstehen - die Annäherung an einen spezifischen Wert.")]
]