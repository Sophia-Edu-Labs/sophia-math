#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Systems of Equations]
#v(40pt)
#only("1-")[A linear system of equations is solvable if the rank of the augmented matrix ____ the rank of the coefficient matrix.]
#v(40pt)
#only("2-")[a) is greater than]
#v(10pt)
#only("3-")[b) is less than]
#v(10pt)
#only("4-")[c) equals]
#v(10pt)
#only("5-")[d) is not equal to]
#only("1")[#voiceover("Consider the following question about linear systems of equations. A linear system of equations is solvable if the rank of the augmented matrix blank the rank of the coefficient matrix. What goes in the blank?")]
#only("2")[#voiceover("Is it a) is greater than,")]
#only("3")[#voiceover("b) is less than,")]
#only("4")[#voiceover("c) equals,")]
#only("5")[#voiceover("or d) is not equal to?")]
]#questionDef(
questionText: "A linear system of equations is solvable if the rank of the augmented matrix equals the rank of the coefficient matrix.",
answerOptions: ("is greater than", "is less than", "equals", "is not equal to"),
correctAnswerIndex: 2
)