#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Epsilon-Kriterium]
#v(40pt)
#only("1-")[
Eine Zahlenfolge $(a_n)$ konvergiert gegen $a$, wenn gilt:
]
#v(20pt)
#only("2-")[
$∀ε>0 ∃N∈ℕ ∀n≥N: |a_n-a|<ε$
]
#only("1")[
#voiceover("Eine Zahlenfolge a_n konvergiert gegen a, wenn für jedes Epsilon größer 0")
]
#only("2")[
#voiceover("ein N in den natürlichen Zahlen existiert, so dass für alle n größer oder gleich N gilt: der Betrag von a_n minus a ist kleiner als Epsilon.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#only("1-")[
Zeige, dass die Zahlenfolge $a_n = 1/n$ das Epsilon-Kriterium für $ε = 0.01$ erfüllt. 🤔
]
#only("1")[
#voiceover("Zeige nun, dass die Zahlenfolge a_n gleich 1 durch n das Epsilon-Kriterium für Epsilon gleich 0.01 erfüllt.")
]
]#questionDef(
questionText: "Finde ein passendes $N∈ℕ$, so dass $|a_n-0|<0.01$ für alle $n≥N$ gilt.",
answerOptions: (),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 0,
answerOptionsEquality: (
N: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$N=\key{N}$"),
answerOptionsTypes: (
"N": "number"
)
),
)