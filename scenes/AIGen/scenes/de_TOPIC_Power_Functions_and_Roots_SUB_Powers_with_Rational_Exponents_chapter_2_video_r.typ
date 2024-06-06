#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Multiplikation und Division mit rationalen Exponenten]

#v(40pt)

#only("1-")[
- Multiplikationsregel: $a^(m/n) a^(p/q) = a^((m q+n p)/(n q))$
- Divisionsregel: $a^(m/n) / a^(p/q) = a^((m q-n p)/(n q))$
]

#only("1")[
#voiceover("Beim Multiplizieren von Ausdrücken mit rationalen Exponenten addieren wir die Exponenten. Die Zähler werden mit den Nennern über Kreuz multipliziert, und die Nenner werden miteinander multipliziert.")
]

#only("2")[
#voiceover("Bei der Division subtrahieren wir die Exponenten. Auch hier werden die Zähler mit den Nennern über Kreuz multipliziert, und die Nenner werden miteinander multipliziert.")
]

#v(20pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 5, 100)
y1 = x**(1/2) * x**(1/2)
y2 = x**(1/2) / x**(1/3)

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y1, label=r'$x^{1/2} \cdot x^{1/2} = x^{(1/2 + 1/2)} = x^1$')
ax.plot(x, y2, label=r'$x^{1/2} / x^{1/3} = x^{(1/2 - 1/3)} = x^{1/6}$')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Multiplikation und Division mit rationalen Exponenten')
ax.legend()
ax.grid(True)

plt.show()
```,
width: 360pt),
)
]
]

#only("3")[
#voiceover("Hier ist ein Diagramm, das ein Beispiel für die Multiplikation und Division mit rationalen Exponenten zeigt. Die blaue Linie repräsentiert x hoch ein Halb multipliziert mit x hoch ein Halb, was x hoch eins ergibt. Die orange Linie repräsentiert x hoch ein Halb geteilt durch x hoch ein Drittel, was x hoch ein Sechstel ergibt.")
]

#v(20pt)

#only("4-")[
💡 Denke daran: 
- Bei der Multiplikation addiere die Exponenten
- Bei der Division subtrahiere die Exponenten
- Zähler und Nenner über Kreuz multiplizieren
]

#only("4")[
#voiceover("Zusammenfassend, denke daran, dass wir bei der Multiplikation die Exponenten addieren und bei der Division die Exponenten subtrahieren. Zähler und Nenner werden immer über Kreuz multipliziert.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]

#v(40pt)

#only("1-")[
Vereinfache: $8^(2/3) / 8^(1/3)$
]

#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Wir wollen acht hoch zwei Drittel geteilt durch acht hoch ein Drittel vereinfachen.")
]

#v(20pt)

#only("2-")[
$8^(2/3) / 8^(1/3) = 8^((2/3) - (1/3)) = 8^(1/3) = 2$
]

#only("2")[
#voiceover("Mit der Divisionsregel subtrahieren wir die Exponenten. Zwei Drittel minus ein Drittel ergibt ein Drittel. Also haben wir acht hoch ein Drittel, was zwei ergibt.")
]

#v(20pt)

#only("3-")[
✅ Der vereinfachte Ausdruck ist 2.
]

#only("3")[
#voiceover("Daher ist der vereinfachte Ausdruck zwei.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[
- Rationale Exponenten repräsentieren Wurzeln 🌱
- Vereinfache, indem Du in die Radikalform umwandelst und umgekehrt ⇄
- Multiplizieren: Exponenten addieren, Zähler und Nenner über Kreuz multiplizieren ➕
- Dividieren: Exponenten subtrahieren, Zähler und Nenner über Kreuz multiplizieren ➖
]

#only("1")[
#voiceover("Zusammenfassend repräsentieren rationale Exponenten Wurzeln. Wir können Ausdrücke vereinfachen, indem wir zwischen rationaler Exponentenform und Radikalform umwandeln. Beim Multiplizieren von Ausdrücken mit rationalen Exponenten addiere die Exponenten und multipliziere Zähler und Nenner über Kreuz. Beim Dividieren subtrahiere die Exponenten und multipliziere Zähler und Nenner über Kreuz.")
]

#v(20pt)

#only("2-")[
💪 Übe das Vereinfachen von Ausdrücken mit rationalen Exponenten, um diese Regeln zu meistern!
]

#only("2")[
#voiceover("Übe das Vereinfachen verschiedener Ausdrücke mit rationalen Exponenten, um diese Regeln zu festigen und zu meistern.")
]
]