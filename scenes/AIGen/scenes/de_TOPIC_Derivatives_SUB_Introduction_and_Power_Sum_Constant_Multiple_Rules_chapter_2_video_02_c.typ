#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Summenregel für Ableitungen]
#v(40pt)
Was ist die Ableitung von $f(x) = x^2 + x$?
#v(20pt)
#only("-1")[a) $2x + 1$]#only("2-")[#text(fill:green)[a) $2x + 1$]]
#v(10pt)
#only("-2")[b) $x^2 + 1$]#only("3-")[#text(fill:red)[b) $x^2 + 1$]]
#v(10pt)
#only("-3")[c) $2x + x$]#only("4-")[#text(fill:red)[c) $2x + x$]]
#v(10pt)
#only("-4")[d) $2x$]#only("5-")[#text(fill:red)[d) $2x$]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns erklären, warum das die richtige Antwort ist und warum die anderen falsch sind.")]

#only("2")[#voiceover("Option a, 2x plus 1, ist tatsächlich die richtige Antwort. Dies ist eine perfekte Anwendung der Summenregel für Ableitungen.")]

#only("3")[#voiceover("Option b, x quadrat plus 1, ist falsch. Dies sieht aus wie die ursprüngliche Funktion, bei der der x-Term durch 1 ersetzt wurde, was nicht der Art und Weise entspricht, wie Ableitungen funktionieren.")]

#only("4")[#voiceover("Option c, 2x plus x, ist nah dran, aber nicht ganz richtig. Es ist, als ob wir x quadrat korrekt differenziert hätten, aber den x-Term unverändert gelassen hätten.")]

#only("5")[#voiceover("Option d, 2x, ist ebenfalls falsch. Dies ist die Ableitung von x quadrat allein, wobei der x-Term vollständig ignoriert wird.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Erklärung der Summenregel]
#v(20pt)
#only("1-")[Die Summenregel besagt:]
#v(10pt)
#only("2-")[$(f(x) + g(x))' = f'(x) + g'(x)$]
#v(20pt)
#only("3-")[Für $f(x) = x^2 + x$:]
#v(10pt)
#only("4-")[- $f(x) = x^2 + x$]
#only("5-")[- $f'(x) = (x^2)' + (x)'$]
#only("6-")[- $f'(x) = 2x + 1$]

#only("1")[#voiceover("Lass uns die Lösung mit der Summenregel für Ableitungen aufschlüsseln.")]

#only("2")[#voiceover("Die Summenregel besagt, dass die Ableitung einer Summe die Summe der Ableitungen ist. In mathematischer Notation schreiben wir dies als: die Ableitung von f von x plus g von x ist gleich f Strich von x plus g Strich von x.")]

#only("3")[#voiceover("Nun, lass uns dies auf unsere Funktion f von x gleich x quadrat plus x anwenden.")]

#only("4")[#voiceover("Wir beginnen mit unserer Funktion f von x gleich x quadrat plus x.")]

#only("5")[#voiceover("Anwendung der Summenregel, können wir sagen, dass f Strich von x gleich die Ableitung von x quadrat plus die Ableitung von x ist.")]

#only("6")[#voiceover("Wir wissen, dass die Ableitung von x quadrat 2x ist, und die Ableitung von x ist 1. Also ist f Strich von x gleich 2x plus 1.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**2 + x

def f_prime(x):
    return 2*x + 1

x = np.linspace(-2, 2, 100)
y = f(x)
y_prime = f_prime(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = x² + x')
plt.plot(x, y_prime, label="f'(x) = 2x + 1")
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
#v(20pt)
#only("1-")[- Blau: Ursprüngliche Funktion $f(x) = x^2 + x$]
#only("2-")[- Orange: Ableitung $f'(x) = 2x + 1$]

#only("1")[#voiceover("Um dies zu veranschaulichen, lass uns einen Blick auf ein Diagramm unserer ursprünglichen Funktion und ihrer Ableitung werfen.")]

#only("2")[#voiceover("Die blaue Kurve repräsentiert unsere ursprüngliche Funktion, f von x gleich x quadrat plus x. Die orangefarbene Linie ist ihre Ableitung, f Strich von x gleich 2x plus 1. Beachte, wie die Ableitung eine gerade Linie ist, während die ursprüngliche Funktion eine Parabel ist. Dies liegt daran, dass die Ableitung einer quadratischen Funktion immer eine lineare Funktion ist.")]
]