#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
#v(40pt)
#only("1-")[Which of the following represents the mathematical form of Slutsky Decomposition?]
#v(40pt)
#only("2-")[a) Total Effect = Substitution Effect - Income Effect]
#v(10pt)
#only("3-")[b) Total Effect = Substitution Effect + Income Effect]
#v(10pt)
#only("4-")[c) Total Effect = Income Effect - Substitution Effect]
#v(10pt)
#only("5-")[d) Total Effect = Income Effect + Utility Effect]

#only("1")[#voiceover("Let's test your knowledge on the mathematical form of Slutsky Decomposition. Which of the following equations correctly represents it?")]
#only("2")[#voiceover("Is it Total Effect equals Substitution Effect minus Income Effect,")]
#only("3")[#voiceover("or is it Total Effect equals Substitution Effect plus Income Effect,")]
#only("4")[#voiceover("or maybe Total Effect equals Income Effect minus Substitution Effect,")]
#only("5")[#voiceover("or is it Total Effect equals Income Effect plus Utility Effect?")]
]#questionDef(
questionText: "Which of the following represents the mathematical form of Slutsky Decomposition?",
answerOptions: ("$Total\ Effect = Substitution\ Effect - Income\ Effect$", "$Total\ Effect = Substitution\ Effect + Income\ Effect$", "$Total\ Effect = Income\ Effect - Substitution\ Effect$", "$Total\ Effect = Income\ Effect + Utility\ Effect$"),
correctAnswerIndex: 1,
)