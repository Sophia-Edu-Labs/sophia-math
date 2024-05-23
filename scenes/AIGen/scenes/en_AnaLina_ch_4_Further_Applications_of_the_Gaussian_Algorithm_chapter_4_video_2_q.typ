#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication]
#v(40pt)
#only("1-")[Which of the following is true about matrix multiplication?]
#v(40pt)
#only("2-")[a) It is commutative]
#v(10pt)
#only("3-")[b) It is associative]
#v(10pt)
#only("4-")[c) It is distributive]
#v(10pt)
#only("5-")[d) Both b and c]
#only("1")[#voiceover("Let's test your knowledge about matrix multiplication properties.")]
#only("2")[#voiceover("Is matrix multiplication commutative,")]
#only("3")[#voiceover("or is it associative,")]
#only("4")[#voiceover("or is it distributive,")]
#only("5")[#voiceover("or are both options b and c, associativity and distributivity, true for matrix multiplication?")]
]#questionDef(
questionText: "Which of the following is true about matrix multiplication?", 
answerOptions: ("It is commutative", "It is associative", "It is distributive", "Both b and c"),
correctAnswerIndex: 3,
)