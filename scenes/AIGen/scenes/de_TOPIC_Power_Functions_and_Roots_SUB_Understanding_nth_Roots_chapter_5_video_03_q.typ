#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung 2]
#v(40pt)
#only("1-")[Löse: $root(4, x) = 3$]
#only("1")[
#voiceover("Lass uns die Gleichung lösen: die vierte Wurzel von x ist gleich 3.")
]
#only("2")[
#voiceover("In dieser Übung musst Du den Wert von x finden, der diese Gleichung erfüllt.")
]
#only("3")[
#voiceover("Überlege, wie Du x auf einer Seite der Gleichung isolieren kannst.")
]
#only("4")[
#voiceover("Denke daran, dass es eine gültige Operation ist, beide Seiten einer Gleichung mit derselben Potenz zu versehen. Dies kann beim Lösen solcher Gleichungen helfen.")
]
#v(40pt)
#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 100, 1000)
y = np.power(x, 1/4)

plt.figure(figsize=(8, 6))
plt.plot(x, y, linewidth=2, label='$y = root(4, x)$')
plt.axhline(y=3, color='r', linestyle='--', linewidth=2, label='$y = 3$')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph von $y = root(4, x)$')
plt.grid(True)
plt.legend(loc='lower right')
plt.show()
```,
width: 360pt),
)
]
]
#only("5")[
#voiceover("Hier ist ein Graph, der die Funktion y gleich die vierte Wurzel von x zeigt. Die rote gestrichelte Linie stellt y gleich 3 dar. Deine Aufgabe ist es, die x-Koordinate des Punktes zu finden, an dem sich diese beiden Linien schneiden.")
]
]

#questionDef(
questionText: "Welchen Wert hat $x$, der die Gleichung $root(4, x) = 3$ erfüllt?",
answerOptions: ("$x = 81$", "$x = 1$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$x = \key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)
]#questionDef(
questionText: "Welchen Wert hat $x$, der die Gleichung $\sqrt[4]{x} = 3$ erfüllt?",
answerOptions: ("$x = 81$", "$x = 1$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$x = \key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)