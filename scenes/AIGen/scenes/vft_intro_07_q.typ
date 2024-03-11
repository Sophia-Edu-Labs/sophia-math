#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide(max-repetitions: 20)[
#text(size: 28pt, weight: "bold")[#align(center)[Arbeitsweg der Mitarbeiter]]
#v(40pt)
#only("2-")[
Von 100% der Mitarbeiter, nutzen..]
#only("3-")[
- 60% das Auto]
#only("4-")[
- 75% öffentliche Verkehrsmittel]
#only("5-")[
- 50% beides]
#only("6-")[
$->$ Wie viele % nutzen
weder Auto noch ÖV?]
#v(40pt)

#only("1")[
#voiceover("In einer Firma haben wir eine Umfrage zum Arbeitsweg der Mitarbeiter durchgeführt.")
]
#only("2")[
#voiceover("Von allen Mitarbeitern, das entspricht 100%,")
]
#only("3")[
#voiceover("fahren 60% mit dem Auto zur Arbeit,")
]

#only("4")[
#voiceover("75% nutzen öffentliche Verkehrsmittel, und")
]
#only("5")[
#voiceover("50% der Mitarbeiter nutzen sowohl Auto als auch öffentliche Verkehrsmittel für ihren Arbeitsweg ...")
]
#only("6")[

#voiceover("Erstelle eine Vierfeldertafel und ermittle, wie viel Prozent der Mitarbeiter weder Auto noch öffentliche Verkehrsmittel nutzen.")
]
]

#questionDef(
  questionText: "Wie viele Prozent der Mitarbeiter nutzen weder Auto noch öffentliche Verkehrsmittel?",
  // use latex!
  answerOptions: ("$15\%$", "$0\%$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$\key{a}\%$"),
      answerOptionsTypes: (
        "a": "number"
      )
  ),
)