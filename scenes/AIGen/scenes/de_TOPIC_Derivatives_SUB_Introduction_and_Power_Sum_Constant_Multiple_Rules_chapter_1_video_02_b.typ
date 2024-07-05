#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzregel für Ableitungen]
#v(40pt)
Was ist die Ableitung von $x^3$?
#v(20pt)
#only("-1")[a) $3x^2$]#only("2-")[#text(fill:green)[a) $3x^2$]]
#v(10pt)
#only("-2")[b) $x^2$]#only("3-")[#text(fill:red)[b) $x^2$]]
#v(10pt)
#only("-3")[c) $3x$]#only("4-")[#text(fill:red)[c) $3x$]]
#v(10pt)
#only("-4")[d) $x^3$]#only("5-")[#text(fill:red)[d) $x^3$]]

#only("1")[#voiceover("Leider nicht ganz richtig. Lass uns aufschlüsseln, warum a) 3x Quadrat die richtige Antwort ist und die anderen Optionen falsch sind.")]

#only("2")[#voiceover("Option a, 3x Quadrat, ist tatsächlich die richtige Ableitung von x hoch drei. Dies ist eine direkte Anwendung der Potenzregel für Ableitungen.")]

#only("3")[#voiceover("Option b, x Quadrat, ist falsch. Obwohl es nah dran ist, fehlt der Koeffizient 3, der durch das Herunterbringen der Potenz im Differenzierungsprozess entsteht.")]

#only("4")[#voiceover("Option c, 3x, ist ebenfalls falsch. Es hat den richtigen Koeffizienten 3, aber die Potenz ist falsch. Denke daran, dass wir die Potenz um 1 verringern, wenn wir differenzieren.")]

#only("5")[#voiceover("Schließlich ist Option d, x hoch drei, falsch. Dies ist eigentlich die ursprüngliche Funktion, nicht ihre Ableitung.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzregel erklärt]
#v(20pt)
#only("1-")[Die Potenzregel: $dif/dif x (x^n) = n x^(n-1)$]
#v(20pt)
#only("2-")[Für $f(x) = x^3$:]
#v(10pt)
#only("3-")[- $n = 3$]
#only("4-")[- $dif/dif x (x^3) = 3 x^(3-1) = 3x^2$]

#only("1")[#voiceover("Lass uns tiefer eintauchen, warum 3x Quadrat die richtige Antwort ist, indem wir uns die Potenzregel für Ableitungen ansehen.")]

#only("2")[#voiceover("Die Potenzregel besagt, dass die Ableitung von x hoch n gleich n mal x hoch n minus 1 ist. Lass uns dies auf unsere Funktion f von x gleich x hoch drei anwenden.")]

#only("3")[#voiceover("In diesem Fall ist n gleich 3.")]

#only("4")[#voiceover("Wenden wir die Regel an, erhalten wir 3 mal x hoch 3 minus 1, was zu 3x Quadrat vereinfacht wird. Das ist genau unsere richtige Antwort!")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Ableitung visualisieren]
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
y2 = 3*x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x) = x³')
plt.plot(x, y2, label="f'(x) = 3x²")
plt.title('Function and its Derivative')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Um das Verhältnis zwischen einer Funktion und ihrer Ableitung besser zu verstehen, lass uns beide im selben Diagramm visualisieren.")]

#only("2")[#voiceover("Die blaue Kurve repräsentiert unsere ursprüngliche Funktion, f von x gleich x hoch drei. Die orangefarbene Kurve zeigt ihre Ableitung, f Strich von x gleich 3x Quadrat.")]

#only("3")[#voiceover("Beachte, dass die Ableitung immer null ist, wenn die ursprüngliche Funktion eine horizontale Tangente hat, wie zum Beispiel bei x gleich null. Diese visuelle Darstellung hilft uns, die Verbindung zwischen einer Funktion und ihrer Änderungsrate zu sehen.")]
]