#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks vs Slutsky Decomposition]
#v(40pt)
#only("1-")[Which decomposition holds utility constant? 🤔]
#v(40pt)
#only("2-")[a) Hicks]
#v(10pt)
#only("3-")[b) Slutsky]
#v(10pt)
#only("4-")[c) Both]
#v(10pt)
#only("5-")[d) Neither]
#only("1")[#voiceover("Let's test your knowledge on Hicks and Slutsky decompositions. Which decomposition holds utility constant?")]
#only("2")[#voiceover("Is it the Hicks decomposition,")]
#only("3")[#voiceover("or the Slutsky decomposition,")]
#only("4")[#voiceover("or maybe both of them,")]
#only("5")[#voiceover("or neither of them?")]
]#questionDef(
questionText: "Which decomposition holds utility constant?",
answerOptions: ("Hicks", "Slutsky", "Both", "Neither"),
correctAnswerIndex: 0,
)