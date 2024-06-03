#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior 🐑]
#v(40pt)
#only("1-")[How can herd behavior affect financial decisions? 🤔]
#v(40pt)
#only("2-")[a) It leads to independent decision-making 🧠]
#v(10pt)
#only("3-")[b) It leads to following the crowd 🐑]
#v(10pt)  
#only("4-")[c) It has no effect ❌]
#v(10pt)
#only("5-")[d) It improves rationality 🧐]

#only("1")[#voiceover("Let's test your understanding of herd behavior in financial decision-making. How can herd behavior affect financial decisions?")]
#only("2")[#voiceover("Does it lead to independent decision-making,")]  
#only("3")[#voiceover("or does it lead to following the crowd?")]
#only("4")[#voiceover("Or perhaps it has no effect at all,")]
#only("5")[#voiceover("or does it improve rationality in decision-making?")]
]#questionDef(
questionText: "How can herd behavior affect financial decisions?",
answerOptions: ("It leads to independent decision-making", "It leads to following the crowd", "It has no effect", "It improves rationality"),
correctAnswerIndex: 1
)