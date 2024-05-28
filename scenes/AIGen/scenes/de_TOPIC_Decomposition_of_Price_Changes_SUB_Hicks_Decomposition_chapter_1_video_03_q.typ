#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
#v(40pt)
#only("1-")[Was passiert mit der nachgefragten Menge von Gut $X$ aufgrund des Substitutionseffekts, wenn der Preis von Gut $X$ sinkt?]
#v(40pt)
#only("2-")[
- a) Steigt 📈
- b) Sinkt 📉
]
#only("1")[
#voiceover("Betrachte die folgende Frage: Wenn der Preis von Gut $X$ sinkt, was passiert mit der nachgefragten Menge von Gut $X$ aufgrund des Substitutionseffekts?")
]
#only("2")[
#voiceover("Ist es: a) Die nachgefragte Menge steigt, oder b) Die nachgefragte Menge sinkt?")
]
]#questionDef(
questionText: "Wenn der Preis von Gut $X$ sinkt, was passiert mit der nachgefragten Menge von Gut $X$ aufgrund des Substitutionseffekts?",
answerOptions: ("Steigt", "Sinkt"),
correctAnswerIndex: 0,
)