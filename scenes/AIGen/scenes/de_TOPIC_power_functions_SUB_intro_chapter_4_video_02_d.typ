#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktionen mit negativem Exponenten]
#v(40pt)
#only("1-")[Was ist die allgemeine Form einer Potenzfunktion mit negativem Exponenten?]
#v(40pt)
#only("-1")[a) $f(x) = a x^b$]#only("2-")[#text(fill:red)[a) $f(x) = a x^b$]]
#v(10pt)
#only("-2")[b) $f(x) = a x^(-b)$]#only("3-")[#text(fill:red)[b) $f(x) = a x^(-b)$]]
#v(10pt)
#only("-3")[c) $f(x) = a / x^b$]#only("4-")[#text(fill:green)[c) $f(x) = a / x^b$]]
#v(10pt)
#only("-4")[d) $f(x) = a b^x$]#only("5-")[#text(fill:red)[d) $f(x) = a b^x$]]
#v(40pt)

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns erklären, warum das die richtige Antwort ist und warum die anderen Optionen falsch sind.")]
#only("2")[#voiceover("Option a, f von x gleich a mal x hoch b, ist falsch. Dies ist die allgemeine Form einer Potenzfunktion, aber sie repräsentiert nicht speziell einen negativen Exponenten.")]
#only("3")[#voiceover("Option b, f von x gleich a mal x hoch minus b, ist nah dran, aber nicht ganz richtig. Obwohl dies einen negativen Exponenten zeigt, ist es nicht die standardmäßige Schreibweise für diese Funktionen.")]
#only("4")[#voiceover("Option c, f von x gleich a geteilt durch x hoch b, ist korrekt. Dies ist tatsächlich die Standardform für eine Potenzfunktion mit negativem Exponenten.")]
#only("5")[#voiceover("Option d, f von x gleich a mal b hoch x, ist falsch. Dies ist die allgemeine Form einer Exponentialfunktion, nicht einer Potenzfunktion.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Das richtige Formular verstehen]
#v(40pt)
#only("1-")[Korrekte Form: $f(x) = a / x^b$]
#v(20pt)
#only("2-")[- $a$: Konstante (Koeffizient)]
#only("3-")[- $x$: Variable]
#only("4-")[- $b$: positiver Exponent]
#v(20pt)
#only("5-")[Äquivalent zu: $f(x) = a x^(-b)$]

#only("1")[#voiceover("Lass uns verstehen, warum f von x gleich a geteilt durch x hoch b die richtige Form für eine Potenzfunktion mit negativem Exponenten ist.")]
#only("2")[#voiceover("In dieser Form ist a eine Konstante, auch bekannt als Koeffizient.")]
#only("3")[#voiceover("x ist unsere Variable.")]
#only("4")[#voiceover("Und b ist ein positiver Exponent.")]
#only("5")[#voiceover("Diese Form ist äquivalent zu f von x gleich a mal x hoch minus b. Der negative Exponent wird dargestellt, indem x hoch b in den Nenner gesetzt wird.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung von Potenzfunktionen]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0.1, 5, 1000)
y1 = 1 / x
y2 = 1 / x**2
y3 = 1 / x**3

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = 1/x')
plt.plot(x, y2, label='f(x) = 1/x²')
plt.plot(x, y3, label='f(x) = 1/x³')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Power Functions with Negative Exponents')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung einiger Potenzfunktionen mit negativen Exponenten. Die blaue Linie zeigt f von x gleich 1 geteilt durch x, die orange Linie zeigt f von x gleich 1 geteilt durch x², und die grüne Linie zeigt f von x gleich 1 geteilt durch x³.")]
#only("2")[#voiceover("Beachte, wie alle diese Funktionen gegen unendlich gehen, wenn x gegen null geht, und gegen null gehen, wenn x zunimmt. Dies ist ein charakteristisches Verhalten von Potenzfunktionen mit negativen Exponenten.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Allgemeine Form: $f(x) = a / x^b$]
#v(20pt)
#only("2-")[- Äquivalent zu $a x^(-b)$]
#v(20pt)
#only("3-")[- Wenn $x -> oo$, dann $f(x) -> 0$]
#v(20pt)
#only("4-")[- Wenn $x -> 0^+$, dann $f(x) -> oo$]

#only("1")[#voiceover("Lass uns die wichtigsten Punkte über Potenzfunktionen mit negativen Exponenten zusammenfassen. Erstens, merke dir, dass die allgemeine Form f von x gleich a geteilt durch x hoch b ist.")]
#only("2")[#voiceover("Dies ist äquivalent zu a mal x hoch minus b.")]
#only("3")[#voiceover("Eine wichtige Eigenschaft ist, dass f von x gegen null geht, wenn x gegen unendlich geht.")]
#only("4")[#voiceover("Umgekehrt geht f von x gegen unendlich, wenn x sich von der positiven Seite null nähert. Das Verständnis dieser Eigenschaften wird dir helfen, mit diesen Funktionen zu arbeiten und sie zu zeichnen.")]
]