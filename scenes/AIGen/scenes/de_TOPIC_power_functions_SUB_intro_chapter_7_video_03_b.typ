#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Reziproke einer Potenzfunktion]

#v(40pt)

#only("1-")[#text()[$ f(x) = x^3 $]]

#v(20pt)

#only("2-")[#text()[Frage: Finde die Reziproke von $f(x) = x^3$]]

#only("1")[
#voiceover("Keine Sorge, wir gehen die Lösung Schritt für Schritt durch. Wir beginnen mit der gegebenen Funktion f von x gleich x hoch drei.")
]

#only("2")[
#voiceover("Unsere Aufgabe ist es, die Reziproke dieser Funktion zu finden.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verständnis von Reziproken]

#v(40pt)

#only("1-")[- Reziproke: multiplikatives Inverses 🔄]

#v(20pt)

#only("2-")[- Für eine Zahl $a$, ist die Reziproke $1/a$]

#v(20pt)

#only("3-")[- Für eine Funktion $f(x)$, ist die Reziproke $1/f(x)$]

#only("1")[
#voiceover("Zuerst erinnern wir uns daran, was eine Reziproke ist. Eine Reziproke ist auch als multiplikatives Inverses bekannt.")
]

#only("2")[
#voiceover("Für jede Zahl a ist die Reziproke eins durch a.")
]

#only("3")[
#voiceover("Ähnlich ist für jede Funktion f von x die Reziproke eins durch f von x.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Reziproke finden]

#v(40pt)

#only("1-")[$ f(x) = x^3 $]

#v(20pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Reziproke nehmen]]]

#v(20pt)

#only("3-")[$ "Reziproke von" f(x) = 1/x^3 $]

#only("1")[
#voiceover("Wenden wir dies auf unsere Funktion an. Wir beginnen mit f von x gleich x hoch drei.")
]

#only("2")[
#voiceover("Um die Reziproke zu finden, nehmen wir eins durch die Funktion.")
]

#only("3")[
#voiceover("Das ergibt eins durch x hoch drei.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]

#v(40pt)

#only("1-")[Die Reziproke von $f(x) = x^3$ ist:]

#v(20pt)

#only("2-")[$ g(x) = 1/x^3 $]

#v(20pt)

#only("3-")[💡 Dies ist auch eine Potenzfunktion!]

#only("1")[
#voiceover("Unsere endgültige Antwort ist also, dass die Reziproke von f von x gleich x hoch drei ist:")
]

#only("2")[
#voiceover("g von x gleich eins durch x hoch drei.")
]

#only("3")[
#voiceover("Es ist interessant zu bemerken, dass diese Reziproke auch eine Potenzfunktion ist, nur mit einem negativen Exponenten!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Funktionen]

#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**3
y2 = 1/x**3

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = x³')
plt.plot(x, y2, label='g(x) = 1/x³')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Vergleich von f(x) = x³ und seiner Reziproken g(x) = 1/x³')
plt.legend()
plt.grid(True)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
plt.ylim(-5, 5)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Hier ist eine Visualisierung beider Funktionen. Die blaue Kurve repräsentiert f von x gleich x hoch drei, während die orange Kurve ihre Reziproke, g von x gleich eins durch x hoch drei, zeigt. Beachte, wie sie Spiegelbilder voneinander entlang der Linie y gleich x sind. Diese grafische Darstellung hilft uns, die Beziehung zwischen einer Funktion und ihrer Reziproke zu verstehen.")
]
]