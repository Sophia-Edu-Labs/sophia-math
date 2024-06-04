#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Theoretische maximale Leistung]
#v(40pt)
#only("1-")[- Verwende die Formel: $P = E / t$]
#v(20pt)
#only("2-")[- $E = 245250$ Joule (aus der vorherigen Übung)]
#v(20pt)
#only("3-")[- $t = 1$ Sekunde]
#only("1")[
#voiceover("Um die theoretische maximale Leistung zu bestimmen, verwenden wir die Formel P gleich E geteilt durch t, wobei P die Leistung, E die Energie und t die Zeit ist.")
]
#only("2")[
#voiceover("Aus der vorherigen Übung wissen wir, dass die potenzielle Energie E 245250 Joule beträgt.")
]
#only("3")[
#voiceover("Angenommen, die Zeit t beträgt 1 Sekunde, berechne die theoretische maximale Leistung in Watt.")
]
]#questionDef(
questionText: "Was ist die theoretische maximale Leistung $P$ in Watt?",
answerOptions: ("$245250$ W", "$0$ W"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ W"),
answerOptionsTypes: (
"a": "number"
)
),
)