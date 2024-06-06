#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Bevölkerungswachstum]
// Der Titel "Bevölkerungswachstum" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[
- Anfangsbevölkerung: 1000 👥
]
// Die Anfangsbevölkerung wird ab Folie 1 angezeigt
#v(20pt)
#only("2-")[
- Wachstumsrate: 5% pro Jahr 📈
]
// Die Wachstumsrate wird ab Folie 2 angezeigt
#v(20pt)
#only("3-")[
- Zeitraum: 3 Jahre ⏳
]
// Der Zeitraum wird ab Folie 3 angezeigt
#v(20pt)
#only("4-")[
#text(size: 25pt)[Wie groß ist die Bevölkerung nach 3 Jahren? 🤔]
]
// Die Frage wird auf Folie 4 gestellt

#only("1")[
#voiceover("Betrachte eine Bevölkerung mit einer Anfangsgröße von 1000 Individuen.")
]

#only("2")[
#voiceover("Die Bevölkerung wächst mit einer Rate von 5% pro Jahr.")
]

#only("3")[
#voiceover("Wir möchten die Bevölkerungsgröße nach einem Zeitraum von 3 Jahren wissen.")
]

#only("4")[
#voiceover("Wie groß wird die Bevölkerung nach 3 Jahren sein?")
]
]#questionDef(
questionText: "Wie groß ist die Bevölkerung nach 3 Jahren?",
answerOptions: ("$1157.63$", "$1000$"),
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