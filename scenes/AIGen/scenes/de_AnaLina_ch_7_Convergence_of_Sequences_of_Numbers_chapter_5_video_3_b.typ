#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#only("1-")[Bestimmen Sie, ob die Folge $b_n = (-1)^n n$ gegen unendlich divergiert.]
// Die Übung wird auf Folie 1 und weiter angegeben
#only("1")[
#voiceover("Großartige Arbeit! Sie haben korrekt bestimmt, dass die Folge b sub n gleich minus 1 hoch n mal n nicht gegen unendlich divergiert. Lassen Sie uns sehen, warum.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Folgen-Terme]
#v(40pt)
#only("1-")[
- $b_1 = (-1)^1 · 1 = -1$
- $b_2 = (-1)^2 · 2 = 2$  
- $b_3 = (-1)^3 · 3 = -3$
- $b_4 = (-1)^4 · 4 = 4$
]
// Die ersten paar Terme der Folge werden auf Folie 1 und weiter gezeigt
#only("1")[
#voiceover("Zuerst schauen wir uns die ersten paar Terme der Folge an. b sub 1 ist minus 1 hoch 1 mal 1, was minus 1 ist. b sub 2 ist minus 1 zum Quadrat mal 2, was 2 ist. b sub 3 ist minus 1 hoch 3 mal 3, was minus 3 ist. Und b sub 4 ist minus 1 hoch 4 mal 4, was 4 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Oszillation]
#v(40pt)
#only("1-")[
- Die Folge oszilliert zwischen positiven und negativen Werten 📈📉
- Der Betrag der Terme nimmt zu: $|b_n| = n$ 📈
]
// Das oszillierende Verhalten und der zunehmende Betrag werden auf Folie 1 und weiter hervorgehoben
#only("1")[
#voiceover("Wir können sehen, dass die Folge zwischen positiven und negativen Werten oszilliert, weil minus 1 zu einer geraden Potenz 1 ist und zu einer ungeraden Potenz minus 1 ist. Gleichzeitig nimmt der Betrag der Terme, der einfach n ist, zu.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate the sequence
n = np.arange(1, 11)
b_n = (-1)**n * n

# Create the plot
plt.figure(figsize=(8, 6))
plt.stem(n, b_n, linefmt='b-', markerfmt='bo', basefmt='k--')
plt.axhline(0, color='black', lw=0.5)
plt.ylim(-11, 11)
plt.title('Folge $b_n = (-1)^n n$')
plt.xlabel('n')
plt.ylabel('$b_n$')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
// Die Folge wird mit einem Stängeldiagramm auf Folie 1 und weiter visualisiert
#only("1")[
#voiceover("Hier ist ein Diagramm der ersten 10 Terme der Folge. Die blaue Linie zeigt, wie die Folge zwischen positiven und negativen Werten oszilliert, während der Betrag der Terme, dargestellt durch die Höhe der blauen Punkte, zunimmt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz gegen Unendlich]
#v(40pt)
#only("1-")[
- Damit eine Folge gegen unendlich divergiert, müssen ihre Terme unbegrenzt zunehmen 📈
- Aber $b_n$ nimmt nicht unbegrenzt zu, es oszilliert 📈📉
]
// Die Bedingungen für die Divergenz gegen unendlich werden angegeben und mit dem Verhalten von b_n kontrastiert auf Folie 1 und weiter
#only("1")[
#voiceover("Nun, damit eine Folge gegen unendlich divergiert, müssen ihre Terme unbegrenzt zunehmen. Das bedeutet, sie müssen immer größer und größer werden, ohne eine obere Grenze. Aber das tut b sub n nicht. Es oszilliert, geht hin und her zwischen positiven und negativen Werten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[
- Die Folge $b_n = (-1)^n n$ divergiert nicht gegen unendlich ❌
- Sie divergiert, aber nicht gegen unendlich, weil sie mit zunehmendem Betrag oszilliert 📈📉
]
// Das Fazit, dass b_n nicht gegen unendlich divergiert, sondern auf andere Weise divergiert, wird auf Folie 1 und weiter angegeben
#only("1")[
#voiceover("Daher können wir schließen, dass die Folge b sub n gleich minus 1 hoch n mal n nicht gegen unendlich divergiert. Sie divergiert, im Sinne, dass sie keinen endlichen Grenzwert erreicht, aber sie divergiert nicht gegen unendlich, weil sie nicht unbegrenzt zunimmt. Stattdessen oszilliert sie mit zunehmendem Betrag.")
]
]