#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert einer Zahlenfolge]
#v(40pt)
#only("1-")[
- Gegeben: Zahlenfolge $a_n = 1/n$
]
#only("1")[
#voiceover("Gegeben ist die Zahlenfolge a_n gleich 1 durch n.")
]
#v(20pt)
#only("2-")[
- Frage: Existiert $lim_(n->oo) a_n$? 🤔
]
#only("2")[
#voiceover("Die Frage ist: Existiert der Grenzwert von a_n, wenn n gegen unendlich geht?")
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

n = np.arange(1, 20, 1)
a_n = 1/n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(0, color='red', linestyle='--', label='$y = 0$')
plt.xlabel('$n$', fontsize=14)
plt.ylabel('$a_n$', fontsize=14)
plt.title('Zahlenfolge $a_n = 1/n$', fontsize=16)
plt.legend(fontsize=12)
plt.grid(True)
plt.show()
```, 
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier siehst du die grafische Darstellung der Zahlenfolge. Die blaue Linie zeigt die Werte von a_n für verschiedene n. Die rote gestrichelte Linie markiert die y-Achse bei 0.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[
- $lim_(n->oo) a_n = ?$
]
#only("1")[
#voiceover("Deine Aufgabe ist es nun, den Grenzwert von a_n zu bestimmen, wenn n gegen unendlich geht.")
]
]#questionDef(
questionText: "Was ist $lim_(n->oo) a_n$, wobei $a_n = 1/n$?",
answerOptions: ("$lim_(n->oo) a_n = 0$", "$lim_(n->oo) a_n = 1$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$lim_(n->oo) a_n = \key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)