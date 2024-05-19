#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Structure of Solution Set 🧩]
#v(40pt)
#only("1-")[What determines the structure of the solution set of a linear system?]
#v(40pt)
#only("2-")[a) The determinant of the coefficient matrix]
#v(10pt)
#only("3-")[b) The rank of the coefficient matrix and the augmented matrix]
#v(10pt)
#only("4-")[c) The number of variables]
#v(10pt)
#only("5-")[d) The number of equations]
#only("1")[#voiceover("Let's test your understanding of linear systems. What determines the structure of the solution set of a linear system?")]
#only("2")[#voiceover("Is it the determinant of the coefficient matrix,")]
#only("3")[#voiceover("or the rank of the coefficient matrix and the augmented matrix,")]
#only("4")[#voiceover("or maybe the number of variables,")]
#only("5")[#voiceover("or is it the number of equations?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What determines the structure of the solution set of a linear system?",
answerOptions: ("The determinant of the coefficient matrix", "The rank of the coefficient matrix and the augmented matrix", "The number of variables", "The number of equations"),
correctAnswerIndex: 1,
)