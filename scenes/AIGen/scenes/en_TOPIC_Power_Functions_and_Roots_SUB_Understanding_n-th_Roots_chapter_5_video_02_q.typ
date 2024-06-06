#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving Cube Root Equation]
#v(40pt)
#only("1-")[Solve $root(3, x) = 2$]
#v(40pt)
#only("2-")[a) 4]
#v(10pt)
#only("3-")[b) 6]
#v(10pt)
#only("4-")[c) 8]
#v(10pt)
#only("5-")[d) 10]
#only("1")[#voiceover("Let's practice solving an equation with cube roots. Solve the equation: the cube root of x equals 2.")]
#only("2")[#voiceover("Is the solution 4,")]
#only("3")[#voiceover("or is it 6,")]
#only("4")[#voiceover("or maybe 8,")]
#only("5")[#voiceover("or is the solution 10?")]
]#questionDef(
questionText: "Solve $\sqrt[3]{x} = 2$",
answerOptions: ("4", "6", "8", "10"),
correctAnswerIndex: 2
)