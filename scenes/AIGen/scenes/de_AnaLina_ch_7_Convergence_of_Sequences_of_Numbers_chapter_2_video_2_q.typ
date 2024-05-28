#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz-Quiz]
#v(40pt)
#only("1-")[Welche der folgenden Folgen konvergiert? 🤔]
#v(40pt)
#only("2-")[a) $a_n = n$]
#v(10pt)
#only("3-")[b) $b_n = 1/n$]
#v(10pt)
#only("4-")[c) $c_n = (-1)^n$]
#v(10pt)
#only("5-")[d) $d_n = n^2$]

#only("1")[#voiceover("Lass uns dein Verständnis der Konvergenz von Folgen testen. Welche der folgenden Folgen konvergiert?")]
#only("2")[#voiceover("Ist es die Folge a_n gleich n,")]
#only("3")[#voiceover("oder die Folge b_n gleich 1 durch n,")]
#only("4")[#voiceover("oder vielleicht die Folge c_n gleich minus 1 hoch n,")]
#only("5")[#voiceover("oder ist es die Folge d_n gleich n Quadrat?")]
]#questionDef(
questionText: "Welche der folgenden Folgen konvergiert?",
answerOptions: ("$a_n = n$", "$b_n = \\frac{1}{n}$", "$c_n = (-1)^n$", "$d_n = n^2$"),
correctAnswerIndex: 1,
)