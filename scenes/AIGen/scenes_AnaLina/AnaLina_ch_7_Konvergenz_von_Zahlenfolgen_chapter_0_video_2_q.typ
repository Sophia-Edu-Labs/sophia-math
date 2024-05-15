#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Zahlenfolge]
#v(40pt)
#only("1-")[Was ist eine Zahlenfolge?]
#v(40pt)
#only("2-")[a) Eine Liste von Zahlen 📜]
#v(10pt)
#only("3-")[b) Eine Funktion 📈]
#v(10pt)
#only("4-")[c) Eine Matrix 🔢]
#v(10pt)
#only("5-")[d) Ein Vektor ↗]
#only("1")[#voiceover("Lass uns dein Wissen über Zahlenfolgen testen. Was ist eine Zahlenfolge?")]
#only("2")[#voiceover("Ist es eine Liste von Zahlen,")]
#only("3")[#voiceover("oder ist es eine Funktion,")]
#only("4")[#voiceover("oder vielleicht eine Matrix,")]
#only("5")[#voiceover("oder ist es ein Vektor?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Was ist eine Zahlenfolge?",
answerOptions: ("Eine Liste von Zahlen", "Eine Funktion", "Eine Matrix", "Ein Vektor"),
correctAnswerIndex: 0,
)