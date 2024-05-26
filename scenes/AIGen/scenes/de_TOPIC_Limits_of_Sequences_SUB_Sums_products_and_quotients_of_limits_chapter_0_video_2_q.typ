#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte von Folgen 🔢]
#v(40pt)
#only("1-")[Was ist der Grenzwert der Folge $a_n = 1/n$, wenn $n$ gegen $infinity$ geht? 🤔]
#v(40pt)
#only("2-")[a) 1]
#v(10pt)
#only("3-")[b) 0]
#v(10pt)
#only("4-")[c) $infinity$]
#v(10pt)
#only("5-")[d) -1]

#only("1")[#voiceover("Lass uns dein Verständnis von Grenzwerten von Folgen testen. Betrachte die Folge a sub n gleich 1 durch n. Was ist der Grenzwert dieser Folge, wenn n gegen unendlich geht?")]
#only("2")[#voiceover("Ist der Grenzwert 1,")]
#only("3")[#voiceover("oder ist er 0,")]
#only("4")[#voiceover("oder vielleicht unendlich,")]
#only("5")[#voiceover("oder ist er -1?")]
]#questionDef(
questionText: "Was ist der Grenzwert der Folge $a_n = \frac{1}{n}$, wenn $n$ gegen $infinity$ geht?",
answerOptions: ("$1$", "$0$", "$\infty$", "$-1$"),
correctAnswerIndex: 1,
)