#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Límite de una Secuencia]
#v(40pt)
#only("1-")[
Considera la secuencia:
]
#v(20pt)
#only("2-")[
$b_n = \frac{2n}{n+1}$
]
#only("1")[
#voiceover("Considera la siguiente secuencia:")
]
#only("2")[
#voiceover("b sub n es igual a 2n sobre n más 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pregunta]
#v(40pt)
#only("1-")[
Encuentra el límite de la secuencia cuando $n$ tiende a $infinito$:
]
#v(20pt)
#only("2-")[
$lim_{n \\to \infty} b_n = ?$
]
#only("1")[
#voiceover("Encuentra el límite de esta secuencia cuando n tiende a infinito.")
]
#only("2")[
#voiceover("En otras palabras, ¿cuál es el límite de b sub n cuando n tiende a infinito?")
]
]#questionDef(
questionText: "¿Cuál es $\lim_{n \\to \infty} b_n$?",
answerOptions: ("$2$", "$\infty$", "$0$", "$1$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)