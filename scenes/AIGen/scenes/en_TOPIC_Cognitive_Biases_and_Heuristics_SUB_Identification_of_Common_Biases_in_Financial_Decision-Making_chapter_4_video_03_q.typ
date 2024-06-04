#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias]
#v(40pt)
#only("1-")[How can anchoring bias affect financial decisions? 🤔]
#v(40pt)
#only("2-")[a) It leads to well-rounded decisions 🎯]
#v(10pt)
#only("3-")[b) It leads to biased decisions based on initial information 📊]
#v(10pt)
#only("4-")[c) It has no effect ⚖️]
#v(10pt)
#only("5-")[d) It improves accuracy 🎯]

#only("1")[#voiceover("Let's test your understanding of anchoring bias. How can anchoring bias affect financial decisions?")]
#only("2")[#voiceover("Does it lead to well-rounded decisions,")]
#only("3")[#voiceover("or does it lead to biased decisions based on initial information,")]
#only("4")[#voiceover("or does it have no effect at all,")]
#only("5")[#voiceover("or does it improve accuracy?")]
]#questionDef(
questionText: "How can anchoring bias affect financial decisions?",
answerOptions: ("It leads to well-rounded decisions", "It leads to biased decisions based on initial information", "It has no effect", "It improves accuracy"),
correctAnswerIndex: 1,
)