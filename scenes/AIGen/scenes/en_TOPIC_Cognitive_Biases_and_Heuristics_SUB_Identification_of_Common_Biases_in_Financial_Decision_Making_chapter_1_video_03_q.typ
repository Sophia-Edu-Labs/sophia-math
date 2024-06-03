#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
#v(40pt)
#only("1-")[How can overconfidence bias affect financial decisions?]
#v(40pt)
#only("2-")[a) It leads to cautious investing]
#v(10pt)
#only("3-")[b) It leads to excessive risk-taking]
#v(10pt)
#only("4-")[c) It has no effect]
#v(10pt)
#only("5-")[d) It improves decision-making]
#only("1")[#voiceover("Let's test your understanding of overconfidence bias. How can overconfidence bias affect financial decisions?")]
#only("2")[#voiceover("Does it lead to cautious investing,")]
#only("3")[#voiceover("or does it lead to excessive risk-taking,")]
#only("4")[#voiceover("or does it have no effect,")]
#only("5")[#voiceover("or does it improve decision-making?")]
]#questionDef(
questionText: "How can overconfidence bias affect financial decisions?",
answerOptions: ("It leads to cautious investing", "It leads to excessive risk-taking", "It has no effect", "It improves decision-making"),
correctAnswerIndex: 1,
)