#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky vs Hicks Decomposition]
#v(40pt)
#only("1-")[The main difference between Slutsky and Hicks Decomposition is that Slutsky Decomposition holds \_\_\_\_\_ constant, while Hicks Decomposition holds \_\_\_\_\_ constant.]
#v(40pt)
#only("2-")[a) utility, real income]
#v(10pt)
#only("3-")[b) real income, utility]
#v(10pt)  
#only("4-")[c) nominal income, real income]
#v(10pt)
#only("5-")[d) real income, nominal income]

#only("1")[#voiceover("Let's test your knowledge on the difference between Slutsky and Hicks Decomposition. The main difference is that Slutsky Decomposition holds something constant, while Hicks Decomposition holds something else constant. What are these two things?")]
#only("2")[#voiceover("Is it that Slutsky Decomposition holds utility constant, while Hicks Decomposition holds real income constant?")]
#only("3")[#voiceover("Or is it that Slutsky Decomposition holds real income constant, while Hicks Decomposition holds utility constant?")]
#only("4")[#voiceover("Or maybe Slutsky Decomposition holds nominal income constant, while Hicks Decomposition holds real income constant?")]
#only("5")[#voiceover("Or finally, does Slutsky Decomposition hold real income constant, while Hicks Decomposition holds nominal income constant?")]
]#questionDef(
questionText: "The main difference between Slutsky and Hicks Decomposition is that Slutsky Decomposition holds ____ constant, while Hicks Decomposition holds ____ constant.",
answerOptions: ("utility, real income", "real income, utility", "nominal income, real income", "real income, nominal income"),
correctAnswerIndex: 1
)