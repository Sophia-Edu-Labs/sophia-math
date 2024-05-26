#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
#v(40pt)
#only("1-")[The total effect of a price change is the sum of the \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) substitution effect and utility effect]
#v(10pt)
#only("3-")[b) income effect and utility effect]
#v(10pt)
#only("4-")[c) substitution effect and income effect]
#v(10pt)
#only("5-")[d) none of the above]
#only("1")[#voiceover("Let's test your knowledge on Slutsky Decomposition. The total effect of a price change is the sum of the blank.")]
#only("2")[#voiceover("Is it the sum of the substitution effect and utility effect,")]
#only("3")[#voiceover("or is it the sum of the income effect and utility effect,")]
#only("4")[#voiceover("or maybe the sum of the substitution effect and income effect,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "The total effect of a price change is the sum of the ______.",
answerOptions: ("substitution effect and utility effect", "income effect and utility effect", "substitution effect and income effect", "none of the above"),
correctAnswerIndex: 2,
)