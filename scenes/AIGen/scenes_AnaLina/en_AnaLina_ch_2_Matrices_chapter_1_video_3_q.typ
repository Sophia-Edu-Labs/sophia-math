#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Zero Matrix]
#v(40pt)
#only("1-")[Which of the following is a zero matrix?]
#v(40pt)
#only("2-")[a) $mat(1, 2; 3, 4)$]
#v(10pt)
#only("3-")[b) $mat(0, 0; 0, 0)$]
#v(10pt)
#only("4-")[c) $mat(1; 2; 3)$]
#v(10pt)
#only("5-")[d) $mat(1, 0; 0, 1)$]

#only("1")[#voiceover("Let's test your knowledge on zero matrices. Which of the following is a zero matrix?")]
#only("2")[#voiceover("Is it matrix a, with elements 1, 2, 3, and 4,")]
#only("3")[#voiceover("or matrix b, with all elements being zero,")]
#only("4")[#voiceover("or is it matrix c, a column matrix with elements 1, 2, and 3,")]
#only("5")[#voiceover("or lastly, is it matrix d, with elements 1, 0, 0, and 1 on the main diagonal?")]
]#questionDef(
questionText: "Which of the following is a zero matrix?",
answerOptions: ("$mat(1, 2; 3, 4)$", "$mat(0, 0; 0, 0)$", "$mat(1; 2; 3)$", "$mat(1, 0; 0, 1)$"),
correctAnswerIndex: 1,
)