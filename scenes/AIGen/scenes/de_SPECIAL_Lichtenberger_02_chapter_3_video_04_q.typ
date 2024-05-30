#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Ballonstart 🎈]
#v(40pt)

#only("1-")[
- Ein Ballon hebt ab, wenn die Auftriebskraft > Gewicht ist
]
#v(20pt)

#only("2-")[
- Uster liegt auf 464 m über dem Meeresspiegel 🏔️
]
#v(20pt)

#only("3-")[
- Volumen der Gondel und Passagiere ignorieren 🧺👨‍👩‍👧
]

#only("1")[
#voiceover("Ein Ballon hebt ab, wenn die Auftriebskraft, die auf ihn wirkt, größer ist als sein Gewicht.")
]

#only("2")[
#voiceover("Betrachte einen Ballon in Uster, das sich auf einer Höhe von 464 Metern über dem Meeresspiegel befindet.")
]

#only("3")[
#voiceover("Zur Vereinfachung ignorieren wir das Volumen der Gondel und der Passagiere.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage ❓]
#v(40pt)

#only("1-")[
Was muss das Mindestvolumen des Ballons sein, damit er in Uster abhebt?
]

#only("1")[
#voiceover("Angesichts dieses Szenarios, was muss das Mindestvolumen des Ballons sein, damit er in Uster abhebt?")
]

#questionDef(
questionText: "Was ist das Mindestvolumen des Ballons in Kubikmetern, damit er in Uster auf 464 m über dem Meeresspiegel abhebt, unter Vernachlässigung des Volumens der Gondel und der Passagiere?",
answerOptions: ("$1088 m^3$", "$0 m^3$"),  
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("\key{a} $m^3$"),
answerOptionsTypes: (
"a": "number"
)
),
)
]