#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Objectives 🎯]
#v(40pt)
#only("1-")[Which of the following is an objective of Behavioral Finance?]
#v(40pt)
#only("2-")[a) Identifying common biases 🧠]
#v(10pt)
#only("3-")[b) Predicting stock prices 📈]
#v(10pt)  
#only("4-")[c) Calculating interest rates 🧮]
#v(10pt)
#only("5-")[d) Analyzing market competition 🏆]
#only("1")[#voiceover("Let's test your knowledge on the objectives of Behavioral Finance. Which of the following is an objective of Behavioral Finance?")]
#only("2")[#voiceover("Is it identifying common biases,")]
#only("3")[#voiceover("or is it predicting stock prices,")]
#only("4")[#voiceover("or maybe calculating interest rates,")]
#only("5")[#voiceover("or is it analyzing market competition?")]
]#questionDef(
questionText: "Which of the following is an objective of Behavioral Finance?",
answerOptions: ("Identifying common biases", "Predicting stock prices", "Calculating interest rates", "Analyzing market competition"),
correctAnswerIndex: 0,
)