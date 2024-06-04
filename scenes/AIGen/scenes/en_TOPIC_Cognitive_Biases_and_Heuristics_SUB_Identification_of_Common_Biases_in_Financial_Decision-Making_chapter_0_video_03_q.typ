#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Cognitive Biases in Financial Decisions 🧠💰]
#v(40pt)
#only("1-")[How do cognitive biases affect financial decisions?]
#v(40pt)
#only("2-")[a) They make decisions more accurate 🎯]
#v(10pt)
#only("3-")[b) They cause systematic errors ❌]
#v(10pt)
#only("4-")[c) They have no effect 🤷]
#v(10pt)
#only("5-")[d) They improve rationality 🧠✅]
#only("1")[#voiceover("Let's test your understanding of cognitive biases in financial decision-making. How do cognitive biases affect financial decisions?")]
#only("2")[#voiceover("Do they make decisions more accurate,")]
#only("3")[#voiceover("or do they cause systematic errors,")]
#only("4")[#voiceover("or maybe they have no effect at all,")]
#only("5")[#voiceover("or do they improve rationality?")]
]#questionDef(
questionText: "How do cognitive biases affect financial decisions?",
answerOptions: ("They make decisions more accurate", "They cause systematic errors", "They have no effect", "They improve rationality"),
correctAnswerIndex: 1,
)