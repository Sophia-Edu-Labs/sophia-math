#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#only("2-")[
#align(center)[Berechne $1/4 + 1/6$]
]
#only("1")[
#voiceover("Ich hab noch eine spannende Aufgabe für dich. Lass sie uns gemeinsam angehen!")
]
#only("2")[
#voiceover("In dieser Aufgabe sollst du ein Viertel plus ein Sechstel berechnen.")
]
]
#questionDef(
questionText: "Was erhältst du, wenn du $\\frac{1}{4}$ und $\\frac{1}{6}$ addierst?",
answerOptions: ("$\\frac{1}{10}$", "$\\frac{2}{10}$", "$\\frac{1}{24}$", "$\\frac{2}{24}$", "$\\frac{5}{12}$", "0"),
correctAnswerIndex: 4,
freeTextDetail: (
fallbackOptionIndex: 5,
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