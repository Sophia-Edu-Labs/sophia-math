#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Bernoulli-Verteilung: Würfelspiel]
#v(40pt)
#only("1-")[Wir spielen ein Würfelspiel mit einem fairen Würfel. Die Regeln lauten:]
#v(20pt)
#only("2-")[
- Bei einer 1 oder 2: Verlust von 10 Euro
]
#only("3-")[
- Bei einer 3 oder 4: Gewinn von 5 Euro
]
#only("4-")[
- Bei einer 5: Gewinn von 20 Euro
]
#only("5-")[
- Bei einer 6: Gewinn von 30 Euro
]
#v(40pt)
#only("6-")[
Was ist die Erfolgswahrscheinlichkeit $p$, mindestens 15 Euro Gewinn zu erzielen?
]
#only("1")[
#voiceover("Betrachten wir ein Würfelspiel mit einem fairen Würfel und folgenden Regeln:")
]
#only("2")[
#voiceover("Würfeln wir eine 1 oder eine 2, dann verlieren wir 10 Euro.")
]
#only("3")[
#voiceover("Bei einer gewürfelten 3 oder 4 gewinnen wir 5 Euro.")
]
#only("4")[
#voiceover("Zeigt der Würfel eine 5, so gewinnen wir 20 Euro,")
]
#only("5")[
#voiceover("und bei einer gewürfelten 6 erhalten wir sogar 30 Euro.")
]
#only("6")[
#voiceover("Wir betrachten einen Wurf als Erfolg, wenn wir mindestens 15 Euro gewinnen. Wie groß ist die Erfolgswahrscheinlichkeit p in diesem Bernoulli-Experiment?")
]
]
#questionDef(
questionText: "Berechne die Erfolgswahrscheinlichkeit $p$ für das Bernoulli-Experiment.",
// use latex!
answerOptions: ("$\frac13$", "$\frac12$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$")
),
)
