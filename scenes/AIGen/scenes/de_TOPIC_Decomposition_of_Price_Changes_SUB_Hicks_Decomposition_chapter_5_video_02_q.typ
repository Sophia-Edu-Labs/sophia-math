#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks- vs. Slutsky-Zerlegung]
#v(40pt)
#only("1-")[Welche Zerlegung hält den Nutzen konstant? 🤔]
#v(40pt)
#only("2-")[a) Hicks]
#v(10pt)
#only("3-")[b) Slutsky]
#v(10pt)
#only("4-")[c) Beide]
#v(10pt)
#only("5-")[d) Keine]
#only("1")[#voiceover("Lass uns dein Wissen über die Hicks- und Slutsky-Zerlegungen testen. Welche Zerlegung hält den Nutzen konstant?")]
#only("2")[#voiceover("Ist es die Hicks-Zerlegung,")]
#only("3")[#voiceover("oder die Slutsky-Zerlegung,")]
#only("4")[#voiceover("oder vielleicht beide,")]
#only("5")[#voiceover("oder keine von beiden?")]
]#questionDef(
questionText: "Welche Zerlegung hält den Nutzen konstant?",
answerOptions: ("Hicks", "Slutsky", "Beide", "Keine"),
correctAnswerIndex: 0,
)