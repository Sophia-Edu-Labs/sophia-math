#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Cognitive Biases in Financial Decisions 🧠💰]
#v(40pt)
#only("1-")[How do cognitive biases generally affect financial decisions?]
#v(40pt)
#only("2-")[a) They improve accuracy 🎯]
#v(10pt)
#only("3-")[b) They cause systematic errors ❌]
#v(10pt)
#only("4-")[c) They have no effect 🤷]
#v(10pt)
#only("5-")[d) They enhance rationality 🧠]
#only("1")[#voiceover("Let's test your understanding of cognitive biases in financial decision-making. How do cognitive biases generally affect financial decisions?")]
#only("2")[#voiceover("Do they improve the accuracy of financial decisions,")]
#only("3")[#voiceover("or do they cause systematic errors in financial decisions,")]
#only("4")[#voiceover("or maybe they have no effect on financial decisions at all,")]
#only("5")[#voiceover("or do they enhance the rationality of financial decisions?")]
]#questionDef(
questionText: "How do cognitive biases generally affect financial decisions?",
answerOptions: ("They improve accuracy", "They cause systematic errors", "They have no effect", "They enhance rationality"),
correctAnswerIndex: 1,
)