#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte von Folgen]
#v(40pt)
#only("1-")[Gegeben:]
#v(20pt)
#only("1-")[- $lim_(n -> infinity) a_n = 1$]
#v(10pt)
#only("2-")[- $lim_(n -> infinity) b_n = 2$]
#v(40pt)
#only("3-")[Was ist $lim_(n -> infinity) (a_n + b_n) a_n$?]
#v(40pt)
#only("4-")[a) 1]
#v(10pt)
#only("5-")[b) 2]
#v(10pt)  
#only("6-")[c) 3]
#v(10pt)
#only("7-")[d) 4]

#only("1")[#voiceover("Lass uns üben, Grenzwerte von Folgen zu kombinieren. Es ist gegeben, dass der Grenzwert der Folge a_n, wenn n gegen unendlich geht, 1 ist,")]
#only("2")[#voiceover("und der Grenzwert der Folge b_n, wenn n gegen unendlich geht, 2 ist.")]
#only("3")[#voiceover("Basierend auf diesen Informationen, was ist der Grenzwert der Folge a_n plus b_n, alles multipliziert mit a_n, wenn n gegen unendlich geht?")]
#only("4")[#voiceover("Ist es 1,")]  
#only("5")[#voiceover("oder ist es 2,")]
#only("6")[#voiceover("oder vielleicht 3,")]
#only("7")[#voiceover("oder könnte es 4 sein?")]
]#questionDef(
questionText: "Gegeben $\lim_{n \\to \infty} a_n = 1$ und $\lim_{n \\to \infty} b_n = 2$, was ist $\lim_{n \\to \infty} (a_n + b_n) a_n$?",
answerOptions: ("$1$", "$2$", "$3$", "$4$"),
correctAnswerIndex: 2
)