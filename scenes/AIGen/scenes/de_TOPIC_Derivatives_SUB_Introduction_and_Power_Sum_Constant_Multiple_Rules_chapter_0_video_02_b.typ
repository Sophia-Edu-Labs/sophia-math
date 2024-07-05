#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Ableitung als Änderungsrate]
#v(40pt)

Was stellt eine Ableitung dar?

#v(20pt)
#only("-1")[a) Die Fläche unter einer Kurve]#only("2-")[#text(fill:red)[a) Die Fläche unter einer Kurve]]
#v(10pt)
#only("-2")[b) Die Änderungsrate]#only("3-")[#text(fill:green)[b) Die Änderungsrate]]
#v(10pt)
#only("-3")[c) Der Maximalwert]#only("4-")[#text(fill:red)[c) Der Maximalwert]]
#v(10pt)
#only("-4")[d) Der Minimalwert]#only("5-")[#text(fill:red)[d) Der Minimalwert]]

#only("1")[#voiceover("Ausgezeichnet! Du hast richtig geantwortet. Lass uns erklären, warum b) Die Änderungsrate die richtige Antwort ist und warum die anderen falsch sind.")]

#only("2")[#voiceover("Option a) Die Fläche unter einer Kurve ist falsch. Dies beschreibt eigentlich das Integral, nicht die Ableitung. Das Integral und die Ableitung sind verwandt, aber sie repräsentieren unterschiedliche Konzepte.")]

#only("3")[#voiceover("Option b) Die Änderungsrate ist korrekt! Die Ableitung zeigt, wie schnell sich eine Funktion zu einem bestimmten Zeitpunkt ändert. Es ist wie die Geschwindigkeit der Funktion in diesem Moment.")]

#only("4")[#voiceover("Option c) Der Maximalwert ist falsch. Obwohl Ableitungen uns helfen können, Maximalwerte zu finden, repräsentiert die Ableitung selbst nicht den Maximalwert.")]

#only("5")[#voiceover("Ähnlich ist Option d) Der Minimalwert auch falsch. Ableitungen können helfen, Minimalwerte zu finden, aber sie repräsentieren nicht den Minimalwert selbst.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Ableitung]
#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**2

def df(x):
    return 2*x

x = np.linspace(-2, 2, 100)
y = f(x)
dy = df(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = x²', color='blue')
plt.plot(x, dy, label="f'(x) = 2x", color='red', linestyle='--')
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.5)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.5)
plt.legend()
plt.title("Function and its Derivative")
plt.xlabel("x")
plt.ylabel("y")
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#v(20pt)
#only("1-")[- Blaue Kurve: Ursprüngliche Funktion $f(x) = x^2$]
#only("2-")[- Rote gestrichelte Kurve: Ableitung $f'(x) = 2x$]
#only("3-")[- Ableitung zeigt die Steigung der Tangente an jedem Punkt]
#only("4-")[- Steilere Kurve → Größerer Ableitungswert]

#only("1")[#voiceover("Lass uns visualisieren, wie eine Ableitung die Änderungsrate darstellt. Hier haben wir ein Diagramm, das eine Funktion und ihre Ableitung zeigt.")]

#only("2")[#voiceover("Die blaue Kurve stellt die ursprüngliche Funktion dar, $f(x) = x^2$. Die rote gestrichelte Kurve stellt ihre Ableitung dar, $f'(x) = 2x$.")]

#only("3")[#voiceover("An jedem Punkt auf der blauen Kurve zeigt die Ableitung (rote Kurve) die Steigung der Tangente an diesem Punkt. Diese Steigung repräsentiert die momentane Änderungsrate der Funktion.")]

#only("4")[#voiceover("Beachte, wie die steileren Teile der blauen Kurve größeren Werten auf der roten Kurve entsprechen. Dies zeigt, dass eine steilere Steigung eine schnellere Änderungsrate bedeutet und somit einen größeren Ableitungswert.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Anwendung im echten Leben]
#v(20pt)

#only("1-")[📈 Beispiel: Position eines Autos über die Zeit]
#v(10pt)
#only("2-")[- Funktion $s(t)$: Position des Autos zu Zeit $t$]
#only("3-")[- Ableitung $s'(t)$: Geschwindigkeit des Autos zu Zeit $t$]
#v(20pt)
#only("4-")[💡 Die Ableitung (Geschwindigkeit) repräsentiert:]
#only("5-")[   - Wie schnell sich die Position ändert]
#only("6-")[   - Die Änderungsrate der Position in Bezug auf die Zeit]

#only("1")[#voiceover("Um zu verstehen, wie Ableitungen Änderungsraten in der realen Welt darstellen, betrachten wir ein Beispiel der Bewegung eines Autos.")]

#only("2")[#voiceover("Stell dir vor, wir haben eine Funktion $s(t)$, die die Position eines Autos zu einem bestimmten Zeitpunkt $t$ darstellt.")]

#only("3")[#voiceover("Die Ableitung dieser Funktion, $s'(t)$, würde die Geschwindigkeit des Autos zu jedem Zeitpunkt $t$ darstellen.")]

#only("4")[#voiceover("In diesem Zusammenhang repräsentiert die Ableitung (die Geschwindigkeit):")]

#only("5")[#voiceover("Wie schnell sich die Position des Autos ändert,")]

#only("6")[#voiceover("Oder mit anderen Worten, die Änderungsrate der Position in Bezug auf die Zeit. Dies zeigt, wie Ableitungen Änderungsraten in verschiedenen realen Szenarien erfassen, nicht nur in abstrakten mathematischen Kontexten.")]
]