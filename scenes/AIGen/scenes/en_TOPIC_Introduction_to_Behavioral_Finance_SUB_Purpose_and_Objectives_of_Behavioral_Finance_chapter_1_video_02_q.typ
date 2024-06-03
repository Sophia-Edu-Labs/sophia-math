#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Purpose of Behavioral Finance]
#v(40pt)
#only("1-")[What is the main purpose of Behavioral Finance?]
#v(40pt)
#only("2-")[a) To predict market trends 📈]
#v(10pt)
#only("3-")[b) To understand irrational financial decisions 🧠]
#v(10pt)
#only("4-")[c) To calculate financial ratios 🧮]
#v(10pt)
#only("5-")[d) To analyze economic policies 📊]
#only("1")[#voiceover("Let's test your knowledge on Behavioral Finance. What is the main purpose of Behavioral Finance?")]
#only("2")[#voiceover("Is it to predict market trends,")]
#only("3")[#voiceover("or to understand irrational financial decisions,")]
#only("4")[#voiceover("or maybe to calculate financial ratios,")]
#only("5")[#voiceover("or is it to analyze economic policies?")]
]#questionDef(
questionText: "What is the main purpose of Behavioral Finance?",
answerOptions: ("To predict market trends", "To understand irrational financial decisions", "To calculate financial ratios", "To analyze economic policies"),
correctAnswerIndex: 1,
)