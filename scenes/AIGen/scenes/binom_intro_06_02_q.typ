#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Binomialverteilung]
#v(40pt)
#only("1")[
#voiceover("Stellen wir uns folgende Frage:")
]
#only("2-")[Wie oft muss man mindestens einen fairen sechsseitigen Würfel werfen, damit man mit einer Wahrscheinlichkeit von mindestens 99% mindestens eine durch drei teilbare Zahl würfelt?]
#only("2")[
#voiceover("Wie oft muss man mindestens einen fairen sechsseitigen Würfel werfen, damit man mit einer Wahrscheinlichkeit von mindestens 99 Prozent mindestens eine durch drei teilbare Zahl würfelt?")
]
#v(40pt)
]


#questionDef(
questionText: "Wie oft muss man mindestens einen fairen sechsseitigen Würfel werfen, damit man mit einer Wahrscheinlichkeit von mindestens $99\%$ mindestens eine durch $3$ teilbare Zahl würfelt?",
answerOptions: ("$12$ mal", "$0$ mal"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ mal"),
answerOptionsTypes: (
"a": "number",
)
),
)