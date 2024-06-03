#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Market Anomalies]
#v(40pt)
#only("1-")[Which of the following is an example of a market anomaly caused by biases?]
#v(40pt)
#only("2-")[a) Stable market prices 📈]
#v(10pt)
#only("3-")[b) Market bubbles 🫧]
#v(10pt) 
#only("4-")[c) Accurate predictions 🎯]
#v(10pt)
#only("5-")[d) Efficient markets 📊]
#only("1")[#voiceover("Let's test your knowledge on market anomalies caused by biases in Behavioral Finance. Which of the following is an example of such an anomaly?")]
#only("2")[#voiceover("Is it stable market prices,")]
#only("3")[#voiceover("or market bubbles,")]
#only("4")[#voiceover("or accurate predictions,")]
#only("5")[#voiceover("or efficient markets?")]
]#questionDef(
questionText: "Which of the following is an example of a market anomaly caused by biases?",
answerOptions: ("Stable market prices", "Market bubbles", "Accurate predictions", "Efficient markets"),
correctAnswerIndex: 1
)