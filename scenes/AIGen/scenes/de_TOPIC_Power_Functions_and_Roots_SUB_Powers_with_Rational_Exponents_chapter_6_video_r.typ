#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzregel für rationale Exponenten 📊]
#v(40pt)
#only("1-")[
- $(a^(m/n))^p = a^((m p)/n)$ 🧮
]
#only("1")[
#voiceover("Die Potenzregel für rationale Exponenten besagt, dass a hoch m durch n, alles hoch p, gleich a hoch m mal p durch n ist.")
]
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a grid of points
x = np.linspace(0, 5, 100)

# Compute the functions
y1 = (x**(2/3))**4
y2 = x**(8/3)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y1, label=r'$(x^{2/3})^4$', linewidth=2)
plt.plot(x, y2, '--', label=r'$x^{8/3}$', linewidth=2)
plt.grid(True)
plt.legend(fontsize=14)
plt.title('Power Rule for Rational Exponents', fontsize=16)
plt.xlabel('x', fontsize=14)
plt.ylabel('y', fontsize=14)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("2")[
#voiceover("Dieses Diagramm veranschaulicht die Potenzregel. Die durchgezogene Linie stellt die Funktion x hoch 2/3, alles hoch 4 dar. Die gestrichelte Linie stellt x hoch 8/3 dar. Wie Du sehen kannst, sind diese beiden Funktionen äquivalent, was die Potenzregel demonstriert.")
]
#v(40pt)
#only("3-")[
Lass es uns aufschlüsseln:
- $a^(m/n)$ ist der Basis-Ausdruck 🏗️
- $p$ ist der äußere Exponent 🔢
]
#only("3")[
#voiceover("Um diese Regel zu verstehen, lass es uns aufschlüsseln. a hoch m durch n ist der Basis-Ausdruck, und p ist der äußere Exponent.")
]
#v(40pt)
#only("4-")[
Anwendung der Regel:
1. Exponenten multiplizieren: $m p$ ✖️
2. Durch den Nenner teilen: $n$ ➗
3. Den Bruch vereinfachen: $(m p)/n$ 🔍
]
#only("4")[
#voiceover("Um die Regel anzuwenden, multiplizieren wir zuerst die Exponenten m und p. Dann teilen wir durch den Nenner n. Schließlich vereinfachen wir den resultierenden Bruch zu m mal p durch n.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 🌟]
#v(40pt)
#only("1-")[
Vereinfache: $(8^(2/3))^3$
]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Wir wollen 8 hoch 2/3, alles hoch 3, vereinfachen.")
]
#v(40pt)
#only("2-")[
1. Bestimme die Basis: $a=8$ 🔍
2. Bestimme die Exponenten: $m=2$, $n=3$, $p=3$ 🔢
]
#only("2")[
#voiceover("Zuerst bestimmen wir die Basis, die 8 ist. Dann bestimmen wir die Exponenten: m ist 2, n ist 3, und p ist 3.")
]
#v(40pt)
#only("3-")[
Wende die Regel an: $(8^(2/3))^3 = 8^((2*3)/3) = 8^2 = 64$ ✅
]
#only("3")[
#voiceover("Jetzt wenden wir die Regel an. 8 hoch 2/3, alles hoch 3, ist gleich 8 hoch 2 mal 3 durch 3, was sich zu 8 hoch 2 vereinfacht, oder 64.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[
- Potenzregel für rationale Exponenten: $(a^(m/n))^p = a^((m p)/n)$ 📊
]
#only("1")[
#voiceover("Zusammenfassend besagt die Potenzregel für rationale Exponenten, dass a hoch m durch n, alles hoch p, gleich a hoch m mal p durch n ist.")
]
#v(40pt)
#only("2-")[
- Exponenten multiplizieren, durch den Nenner teilen, vereinfachen 🧮
]
#only("2")[
#voiceover("Um die Regel anzuwenden, multipliziere die Exponenten, teile durch den Nenner und vereinfache den resultierenden Bruch.")
]
#v(40pt)
#only("3-")[
- Nützlich zum Vereinfachen von Ausdrücken mit rationalen Exponenten 🎓
]
#only("3")[
#voiceover("Diese Regel ist sehr nützlich, um Ausdrücke mit rationalen Exponenten zu vereinfachen.")
]
]