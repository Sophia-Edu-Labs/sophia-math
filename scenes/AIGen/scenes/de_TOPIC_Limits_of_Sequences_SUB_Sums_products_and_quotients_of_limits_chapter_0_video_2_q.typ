#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzen von Folgen 🔢]
#v(40pt)
#only("1-")[Was ist der Grenzwert der Folge $a_n = 1/n$, wenn $n$ gegen unendlich geht? 🤔]
#v(40pt)
#only("2-")[a) 1]
#v(10pt)
#only("3-")[b) 0]
#v(10pt)
#only("4-")[c) $unendlich$]
#v(10pt)
#only("5-")[d) -1]

#only("1")[#voiceover("Lassen Sie uns Ihr Verständnis der Grenzen von Folgen testen. Betrachten Sie die Folge a sub n gleich 1 durch n. Was ist der Grenzwert dieser Folge, wenn n gegen unendlich geht?")]
#only("2")[#voiceover("Ist der Grenzwert 1,")]
#only("3")[#voiceover("oder ist es 0,")]
#only("4")[#voiceover("oder vielleicht unendlich,")]
#only("5")[#voiceover("oder ist es minus 1?")]
]#questionDef(
questionText: "Was ist der Grenzwert der Folge $a_n = \frac{1}{n}$, wenn $n$ gegen unendlich geht?",
answerOptions: ("$1$", "$0$", "$\infty$", "$-1$"),
correctAnswerIndex: 1,
)