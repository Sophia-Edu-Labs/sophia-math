#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[The Gaussian Algorithm 🎯]
#v(40pt)
#only("1-")[What is the goal of the Gaussian Algorithm?]
#v(40pt)
#only("2-")[a) To transform the coefficient matrix into a diagonal form]
#v(10pt)
#only("3-")[b) To transform the coefficient matrix into an upper triangular form]  
#v(10pt)
#only("4-")[c) To find the determinant of the matrix]
#v(10pt) 
#only("5-")[d) To invert the matrix]
#only("1")[#voiceover("Let's test your knowledge on the Gaussian Algorithm. What is its main goal?")]
#only("2")[#voiceover("Is it to transform the coefficient matrix into a diagonal form,")]
#only("3")[#voiceover("or to transform it into an upper triangular form,")]
#only("4")[#voiceover("or maybe to find the determinant of the matrix,")]
#only("5")[#voiceover("or is the goal to invert the matrix?")]
]#questionDef(
questionText: "What is the goal of the Gaussian Algorithm?", 
answerOptions: ("To transform the coefficient matrix into a diagonal form", "To transform the coefficient matrix into an upper triangular form", "To find the determinant of the matrix", "To invert the matrix"),
correctAnswerIndex: 1,  
)