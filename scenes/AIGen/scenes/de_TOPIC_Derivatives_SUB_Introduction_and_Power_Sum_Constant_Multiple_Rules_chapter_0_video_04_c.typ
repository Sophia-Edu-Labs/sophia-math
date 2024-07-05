#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Positive Ableitung und Verhalten der Funktion]
#v(40pt)

Wenn die Ableitung einer Funktion an einem Punkt positiv ist, was kannst du über die Funktion an diesem Punkt schließen?

#v(20pt)
#only("-1")[a) Die Funktion steigt]#only("2-")[#text(fill:green)[a) Die Funktion steigt]]
#v(10pt)
#only("-2")[b) Die Funktion fällt]#only("3-")[#text(fill:red)[b) Die Funktion fällt]]
#v(10pt)
#only("-3")[c) Die Funktion hat ein Maximum]#only("4-")[#text(fill:red)[c) Die Funktion hat ein Maximum]]
#v(10pt)
#only("-4")[d) Die Funktion ist konstant]#only("5-")[#text(fill:red)[d) Die Funktion ist konstant]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns erklären, warum die richtige Antwort anders lautet und warum die anderen Optionen falsch sind.")]

#only("2")[#voiceover("Option a ist korrekt. Wenn die Ableitung einer Funktion an einem Punkt positiv ist, bedeutet das, dass die Funktion an diesem Punkt steigt. Die Ableitung repräsentiert die Steigung der Tangente an die Funktion an einem gegebenen Punkt. Eine positive Steigung zeigt an, dass die Funktion von links nach rechts aufwärts verläuft.")]

#only("3")[#voiceover("Option b ist falsch. Wenn die Funktion fallen würde, wäre ihre Ableitung negativ, nicht positiv. Eine negative Ableitung zeigt an, dass die Funktion von links nach rechts abwärts verläuft.")]

#only("4")[#voiceover("Option c ist falsch. Ein Maximum tritt auf, wenn die Ableitung von positiv zu negativ wechselt und dabei durch null geht. An einem Maximum ist die Ableitung null, nicht positiv.")]

#only("5")[#voiceover("Option d ist ebenfalls falsch. Wenn die Funktion konstant wäre, wäre ihre Ableitung überall null, nicht positiv. Eine konstante Funktion hat einen horizontalen Graphen ohne Änderung der y-Werte, wenn sich x ändert.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der positiven Ableitung]
#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**2 + 2*x

x = np.linspace(-3, 3, 100)
y = f(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = x² + 2x')
plt.axvline(x=0, color='r', linestyle='--', label='x = 0')
plt.plot(0, f(0), 'ro', markersize=10)
plt.arrow(0, f(0), 0.5, f(0.5)-f(0), head_width=0.15, head_length=0.3, fc='r', ec='r')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Funktion mit positiver Ableitung bei x = 0')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#v(20pt)
#only("1-")[- Roter Punkt: Punkt, an dem die Ableitung positiv ist]
#only("2-")[- Roter Pfeil: Richtung des Anstiegs]
#only("3-")[- Kurve: Deutlich steigend am roten Punkt]

#only("1")[#voiceover("Lass uns visualisieren, was eine positive Ableitung für eine Funktion bedeutet. In diesem Graphen haben wir die Funktion f von x gleich x² plus 2x.")]

#only("2")[#voiceover("Der rote Punkt stellt einen Punkt dar, an dem die Ableitung positiv ist. Beachte den roten Pfeil, der von diesem Punkt nach oben zeigt. Dieser Pfeil repräsentiert die positive Steigung der Tangente an diesem Punkt, was dasselbe ist wie die Ableitung.")]

#only("3")[#voiceover("Beobachte, wie die Kurve am roten Punkt deutlich steigt. Das ist, was wir meinen, wenn wir sagen, dass eine positive Ableitung eine steigende Funktion anzeigt. Wenn wir uns von diesem Punkt nach rechts bewegen, werden die y-Werte der Funktion größer.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)

#only("1-")[- Positive Ableitung ⇒ Steigende Funktion 📈]
#v(20pt)
#only("2-")[- Steigung der Tangente = Ableitung 📐]
#v(20pt)
#only("3-")[- Ableitung gibt Änderungsrate an 🔄]

#only("1")[#voiceover("Fassen wir die wichtigsten Punkte zusammen. Erstens bedeutet eine positive Ableitung an einem Punkt, dass die Funktion an diesem Punkt steigt. Dies ist die grundlegende Beziehung, die wir besprochen haben.")]

#only("2")[#voiceover("Denke daran, dass die Ableitung an einem Punkt gleich der Steigung der Tangente an diesem Punkt ist. Diese geometrische Interpretation hilft uns zu verstehen, warum eine positive Ableitung eine steigende Funktion bedeutet.")]

#only("3")[#voiceover("Schließlich gibt uns die Ableitung die momentane Änderungsrate der Funktion an. Wenn diese Rate positiv ist, bedeutet das, dass die Werte der Funktion steigen, wenn wir uns auf der x-Achse nach rechts bewegen.")]
]