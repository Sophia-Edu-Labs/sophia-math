#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias]
#v(40pt)
#only("1-")[How can confirmation bias affect financial decisions?]
#v(40pt)
#only("2-")[a) It leads to balanced decision-making]
#v(10pt)
#only("3-")[b) It leads to ignoring contradictory information]
#v(10pt)
#only("4-")[c) It has no effect]
#v(10pt)
#only("5-")[d) It improves accuracy]
#only("1")[#voiceover("Let's test your understanding of confirmation bias. How can confirmation bias affect financial decisions?")]
#only("2")[#voiceover("Does it lead to balanced decision-making,")]
#only("3")[#voiceover("or does it lead to ignoring contradictory information,")]
#only("4")[#voiceover("or does it have no effect,")]
#only("5")[#voiceover("or does it improve accuracy?")]
]#questionDef(
questionText: "How can confirmation bias affect financial decisions?",
answerOptions: ("It leads to balanced decision-making", "It leads to ignoring contradictory information", "It has no effect", "It improves accuracy"),
correctAnswerIndex: 1,
)