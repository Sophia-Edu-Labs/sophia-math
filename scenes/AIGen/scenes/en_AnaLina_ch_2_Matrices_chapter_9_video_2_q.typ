#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Transposition of Matrices]
// The title "Transposition of Matrices" is shown on this slide
#v(40pt)
#only("1-")[What is $(A^T)^T$ equal to?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $A$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $A^T$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $-A$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $A + A^T$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of matrix transposition. If A is a matrix, what is A transpose transpose equal to?")]
#only("2")[#voiceover("Is it equal to A,")]
#only("3")[#voiceover("or is it equal to A transpose,")]
#only("4")[#voiceover("or maybe negative A,")]
#only("5")[#voiceover("or is it equal to A plus A transpose?")]
]#questionDef(
questionText: "What is $(A^T)^T$ equal to?", 
answerOptions: ("A", "$A^T$", "$-A$", "$A + A^T$"),
correctAnswerIndex: 0,
)