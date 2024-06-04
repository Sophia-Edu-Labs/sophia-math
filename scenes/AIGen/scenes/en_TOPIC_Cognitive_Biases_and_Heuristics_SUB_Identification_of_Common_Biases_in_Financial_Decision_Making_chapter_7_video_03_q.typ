#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Sunk Cost Fallacy]
#v(40pt)
#only("1-")[How can the sunk cost fallacy affect financial decisions?]
#v(40pt)
#only("2-")[a) It leads to rational decision-making]
#v(10pt)
#only("3-")[b) It leads to continuing unprofitable investments]
#v(10pt)
#only("4-")[c) It has no effect]
#v(10pt)
#only("5-")[d) It improves accuracy]
#only("1")[#voiceover("Let's test your understanding of the sunk cost fallacy. How can the sunk cost fallacy affect financial decisions?")]
#only("2")[#voiceover("Does it lead to rational decision-making,")]  
#only("3")[#voiceover("or does it lead to continuing unprofitable investments,")]
#only("4")[#voiceover("or does it have no effect,")]
#only("5")[#voiceover("or does it improve accuracy?")]
]#questionDef(
questionText: "How can the sunk cost fallacy affect financial decisions?",
answerOptions: ("It leads to rational decision-making", "It leads to continuing unprofitable investments", "It has no effect", "It improves accuracy"),
correctAnswerIndex: 1,
)