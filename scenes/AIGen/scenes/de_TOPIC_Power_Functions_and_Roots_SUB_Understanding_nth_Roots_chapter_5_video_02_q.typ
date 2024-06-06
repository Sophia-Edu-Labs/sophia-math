#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösen der Gleichung mit Kubikwurzel]
#v(40pt)
#only("1-")[Löse $root(3, x) = 2$]
#v(40pt)
#only("2-")[a) 4]
#v(10pt)
#only("3-")[b) 6]
#v(10pt)
#only("4-")[c) 8]
#v(10pt)
#only("5-")[d) 10]
#only("1")[#voiceover("Lass uns üben, eine Gleichung mit Kubikwurzeln zu lösen. Löse die Gleichung: die Kubikwurzel von x ist gleich 2.")]
#only("2")[#voiceover("Ist die Lösung 4,")]
#only("3")[#voiceover("oder ist es 6,")]
#only("4")[#voiceover("oder vielleicht 8,")]
#only("5")[#voiceover("oder ist die Lösung 10?")]
]#questionDef(
questionText: "Löse $\sqrt[3]{x} = 2$",
answerOptions: ("4", "6", "8", "10"),
correctAnswerIndex: 2
)