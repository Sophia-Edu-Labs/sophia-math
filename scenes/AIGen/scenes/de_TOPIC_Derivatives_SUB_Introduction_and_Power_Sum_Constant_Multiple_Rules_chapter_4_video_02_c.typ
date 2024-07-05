#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Ableitung eines Polynoms]
#v(40pt)
Was ist die Ableitung von $3x^2 + 4x$?
#v(40pt)
#only("-1")[a) $6x + 4$]#only("2-")[#text(fill:green)[a) $6x + 4$]]
#v(10pt)
#only("-2")[b) $3x^2 + 4$]#only("3-")[#text(fill:red)[b) $3x^2 + 4$]]
#v(10pt)
#only("-3")[c) $6x + 4x$]#only("4-")[#text(fill:red)[c) $6x + 4x$]]
#v(10pt)
#only("-4")[d) $3x + 4$]#only("5-")[#text(fill:red)[d) $3x + 4$]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns jede Option durchgehen, um zu verstehen, warum a) die richtige Antwort ist und warum die anderen falsch sind.")]

#only("2")[#voiceover("Option a), 6x plus 4, ist tatsächlich die richtige Antwort. Lass uns im nächsten Slide erklären, warum.")]

#only("3")[#voiceover("Option b), 3x quadrat plus 4, ist falsch. Das ist eigentlich nur die ursprüngliche Funktion ohne das x-Term, nicht ihre Ableitung.")]

#only("4")[#voiceover("Option c), 6x plus 4x, ist ebenfalls falsch. Während der 6x-Teil korrekt ist, ist der 4x-Term nicht richtig. Denke daran, wenn wir eine Konstante mal x differenzieren, ist das Ergebnis nur die Konstante.")]

#only("5")[#voiceover("Option d), 3x plus 4, ist auch falsch. Diese Antwort wendet die Potenzregel für den x quadrat-Term nicht richtig an.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt Lösung]
#v(40pt)
#only("1-")[Ursprüngliche Funktion: $f(x) = 3x^2 + 4x$]
#v(20pt)
#only("2-")[Schritt 1: Ableitung von $3x^2$]
#only("3-")[$ (3x^2)' = 3 dot 2x = 6x$]
#v(20pt)
#only("4-")[Schritt 2: Ableitung von $4x$]
#only("5-")[$(4x)' = 4$]
#v(20pt)
#only("6-")[Schritt 3: Ergebnisse kombinieren]
#only("7-")[$ f'(x) = 6x + 4$]

#only("1")[#voiceover("Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit unserer ursprünglichen Funktion, f von x gleich 3x quadrat plus 4x.")]

#only("2")[#voiceover("Zuerst finden wir die Ableitung von 3x quadrat.")]

#only("3")[#voiceover("Mit der Potenzregel multiplizieren wir den Koeffizienten 3 mit dem Exponenten 2 und reduzieren dann den Exponenten um 1. Das ergibt 3 mal 2x, was 6x entspricht.")]

#only("4")[#voiceover("Als nächstes finden wir die Ableitung von 4x.")]

#only("5")[#voiceover("Die Ableitung von 4x ist einfach 4, weil die Ableitung von x 1 ist und wir den Koeffizienten beibehalten.")]

#only("6")[#voiceover("Schließlich kombinieren wir diese Ergebnisse.")]

#only("7")[#voiceover("Die Ableitung unserer ursprünglichen Funktion ist daher 6x plus 4.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return 3*x**2 + 4*x

def f_prime(x):
    return 6*x + 4

x = np.linspace(-2, 2, 100)
y = f(x)
y_prime = f_prime(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = 3x² + 4x', color='blue')
plt.plot(x, y_prime, label="f'(x) = 6x + 4", color='red')
plt.title("Function and its Derivative")
plt.xlabel("x")
plt.ylabel("y")
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- Blaue Kurve: Ursprüngliche Funktion $f(x) = 3x^2 + 4x$]
#only("2-")[- Rote Linie: Ableitung $f'(x) = 6x + 4$]

#only("1")[#voiceover("Um das Verhältnis zwischen einer Funktion und ihrer Ableitung besser zu verstehen, schauen wir uns ein Diagramm an. Die blaue Kurve stellt unsere ursprüngliche Funktion dar, f von x gleich 3x quadrat plus 4x.")]

#only("2")[#voiceover("Die rote Linie stellt die Ableitung dar, die wir gerade berechnet haben, f Strich von x gleich 6x plus 4. Beachte, dass die Ableitung eine gerade Linie ist, was Sinn ergibt, da es sich um eine lineare Funktion handelt. Diese Linie repräsentiert die Steigung der ursprünglichen Funktion an jedem Punkt.")]
]