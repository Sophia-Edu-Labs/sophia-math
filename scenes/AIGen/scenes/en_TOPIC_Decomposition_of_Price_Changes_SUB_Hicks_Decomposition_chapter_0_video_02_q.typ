#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition]
#v(40pt)
#only("1-")[What does Hicks Decomposition hold constant? 🤔]
#v(40pt)
#only("2-")[a) Income 💰]
#v(10pt)
#only("3-")[b) Utility 😊]
#v(10pt)
#only("4-")[c) Price 🏷]
#v(10pt)
#only("5-")[d) Quantity 📦]
#only("1")[#voiceover("Let's test your knowledge on Hicks Decomposition. What does Hicks Decomposition hold constant?")]
#only("2")[#voiceover("Is it income,")]
#only("3")[#voiceover("or is it utility,")]
#only("4")[#voiceover("or maybe price,")]
#only("5")[#voiceover("or is it quantity?")]
]#questionDef(
questionText: "What does Hicks Decomposition hold constant?",
answerOptions: ("Income", "Utility", "Price", "Quantity"),
correctAnswerIndex: 1,
)