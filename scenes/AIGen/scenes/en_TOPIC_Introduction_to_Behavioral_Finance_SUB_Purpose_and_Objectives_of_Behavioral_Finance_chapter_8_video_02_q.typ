#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications 🌍]
#v(40pt)
#only("1-")[Which of the following is a real-world application of Behavioral Finance?]
#v(40pt)
#only("2-")[a) Investment strategies 📈]
#v(10pt)
#only("3-")[b) Predicting stock prices 🔮]
#v(10pt)
#only("4-")[c) Calculating interest rates 🧮]
#v(10pt)
#only("5-")[d) Analyzing market competition 🏆]
#only("1")[#voiceover("Let's test your knowledge on the real-world applications of Behavioral Finance. Which of the following is a real-world application of Behavioral Finance?")]
#only("2")[#voiceover("Is it investment strategies,")]
#only("3")[#voiceover("or predicting stock prices,")]
#only("4")[#voiceover("or calculating interest rates,")]
#only("5")[#voiceover("or analyzing market competition?")]
]#questionDef(
questionText: "Which of the following is a real-world application of Behavioral Finance?",
answerOptions: ("Investment strategies", "Predicting stock prices", "Calculating interest rates", "Analyzing market competition"),
correctAnswerIndex: 0,
)