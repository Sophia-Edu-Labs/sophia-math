#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance 🧠💰]
#v(40pt)
#only("1-")[What is a key focus of Behavioral Finance?]
#v(40pt)
#only("2-")[a) Predicting stock prices 📈]
#v(10pt)
#only("3-")[b) Understanding investor behavior 🤔]
#v(10pt)
#only("4-")[c) Calculating interest rates 🧮]
#v(10pt)
#only("5-")[d) Analyzing market competition 🏦]
#only("1")[#voiceover("Let's test your knowledge on Behavioral Finance. What is a key focus of this field?")]
#only("2")[#voiceover("Is it predicting stock prices,")]
#only("3")[#voiceover("or understanding investor behavior,")]
#only("4")[#voiceover("or maybe calculating interest rates,")]
#only("5")[#voiceover("or is it analyzing market competition?")]
]#questionDef(
questionText: "Which of the following is a key focus of Behavioral Finance?",
answerOptions: ("Predicting stock prices", "Understanding investor behavior", "Calculating interest rates", "Analyzing market competition"),
correctAnswerIndex: 1,
)