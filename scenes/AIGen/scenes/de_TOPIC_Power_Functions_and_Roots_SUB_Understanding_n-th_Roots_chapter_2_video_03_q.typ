#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#only("1-")[
Was ist $root(4, 16/81)$? 🤔
]
#only("1")[
#voiceover("Betrachte die folgende Übungsfrage: Was ist die vierte Wurzel von 16 durch 81?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Hinweis]
#v(40pt)
#only("1-")[
Denke daran: 
- Die n-te Wurzel eines Quotienten ist der Quotient der n-ten Wurzeln 📏
]
#only("1")[
#voiceover("Hier ist ein Hinweis: Denke daran, dass die n-te Wurzel eines Quotienten der Quotient der n-ten Wurzeln ist.")
]
]#questionDef(
questionText: "Was ist $\sqrt[4]{\frac{16}{81}}$?",
answerOptions: ("$\frac{2}{3}$", "$\frac{1}{2}$"), \ncorrectAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$"),
answerOptionsTypes: (
"a": "number"  \n)
),
)