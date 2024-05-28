#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Grenzen von Summen 🧮]
#v(40pt)
#only("1-")[Wenn $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$ sind, dann ist $lim_(n -> infinity) (a_n + b_n)$ \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) $L + M$]
#v(10pt)
#only("3-")[b) $L - M$]
#v(10pt)
#only("4-")[c) $L M$]
#v(10pt)
#only("5-")[d) $L / M$]
#only("1")[#voiceover("Lass uns dein Verständnis der Grenzwerte von Summen testen. Wenn der Grenzwert der Folge a_n, wenn n gegen unendlich geht, gleich L ist und der Grenzwert der Folge b_n, wenn n gegen unendlich geht, gleich M ist, was ist dann der Grenzwert der Summe von a_n und b_n, wenn n gegen unendlich geht?")]
#only("2")[#voiceover("Ist es L plus M,")]
#only("3")[#voiceover("oder ist es L minus M,")]
#only("4")[#voiceover("oder vielleicht L mal M,")]
#only("5")[#voiceover("oder ist es L geteilt durch M?")]
]#questionDef(
questionText: "Wenn $\lim_{n \to \infty} a_n = L$ und $\lim_{n \to \infty} b_n = M$ sind, dann ist $\lim_{n \to \infty} (a_n + b_n)$ ____.",
answerOptions: ("$L + M$", "$L - M$", "$L M$", "$L / M$"),
correctAnswerIndex: 0,
)