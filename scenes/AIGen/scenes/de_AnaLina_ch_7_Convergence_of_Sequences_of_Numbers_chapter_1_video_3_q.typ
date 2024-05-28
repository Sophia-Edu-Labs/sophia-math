#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz einer Folge]
#v(40pt)
#only("1-")[Betrachte die Folge $a_n = 1/n$]
#v(20pt)
#only("2-")[Konvergiert diese Folge? 🤔]
#v(20pt)
#only("3-")[Falls ja, was ist der Grenzwert? 📈]

#only("1")[
#voiceover("Betrachte die Folge a sub n gleich 1 durch n.")
]
#only("2")[
#voiceover("Konvergiert diese Folge?")
]
#only("3")[
#voiceover("Falls ja, was ist der Grenzwert der Folge, wenn n gegen unendlich geht?")
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

n = np.arange(1, 21)
a_n = 1/n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(0, color='red', linestyle='--', label='y = 0')
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.title('Folge $a_n = 1/n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]

#only("1")[
#voiceover("Hier ist ein Diagramm der ersten 20 Glieder der Folge a sub n gleich 1 durch n.")
]
#only("2")[
#voiceover("Wenn n größer wird, scheinen die Glieder der Folge immer näher an 0 zu kommen, angezeigt durch die rote gestrichelte Linie.")
]
#only("3")[
#voiceover("Basierend auf dieser Beobachtung, konvergiert die Folge? Wenn ja, was denkst du, ist der Grenzwert?")
]

]#questionDef(
questionText: "Betrachte di Folge $a_n = \frac{1}{n}$.  Was ist der Grenzwert, wenn $n \\to \infty$?",
answerOptions: ("Ja, der Grenzwert ist $0$", "Ja, der Grenzwert ist $1$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("Ja, der Grenzwert ist $\\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)