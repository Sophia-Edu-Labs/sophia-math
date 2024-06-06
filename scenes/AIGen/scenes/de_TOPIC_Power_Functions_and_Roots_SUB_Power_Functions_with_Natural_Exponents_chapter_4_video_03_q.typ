#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#only("1-")[Betrachte die Funktion $f(x) = x^7$.]
#v(20pt)
#only("2-")[Wie verhält sich $f(x)$, wenn $x$ gegen null geht? 🤔]
#only("1")[
#voiceover("Betrachte die Funktion f von x gleich x hoch 7.")
]
#only("2")[
#voiceover("Wie verhält sich diese Funktion, wenn x gegen null geht?")
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

x = np.linspace(-1, 1, 1000)
y = x**7

plt.figure(figsize=(8, 6))
plt.plot(x, y, 'b-', linewidth=2, label='$f(x) = x^7$')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.grid(True, linestyle='--', linewidth=0.5)
plt.xlim(-1, 1)
plt.ylim(-1, 1)
plt.xlabel('$x$', fontsize=14)
plt.ylabel('$f(x)$', fontsize=14)
plt.legend(fontsize=12)
plt.title('Verhalten von $f(x) = x^7$ in der Nähe von null', fontsize=16)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist ein Diagramm der Funktion f von x gleich x hoch 7 in der Nähe von null. Beobachte, wie sich die Funktion verhält, wenn x von beiden Seiten, positiv und negativ, näher an null herankommt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[Wenn $x$ gegen null geht, nähert sich $f(x) = x^7$:]
#v(20pt)
#only("2-")[
- Unendlich? ♾️
- Einer von null verschiedenen Konstante? 📈
- Null? 📉
]
#only("1")[
#voiceover("Wenn x gegen null geht, nähert sich die Funktion f von x gleich x hoch 7:")
]
#only("2")[
#voiceover("Unendlich? Einer von null verschiedenen Konstante? Oder null?")
]
]#questionDef(
questionText: "Wenn $x$ gegen null geht, nähert sich $f(x) = x^7$ unendlich, einer von null verschiedenen Konstante, oder null?",
answerOptions: ("Nähert sich null", "Nähert sich unendlich", "Nähert sich einer von null verschiedenen Konstante"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$f(x)$ nähert sich \key{a}, wenn $x$ gegen null geht."),
answerOptionsTypes: (
"a": "text"
)
),
)