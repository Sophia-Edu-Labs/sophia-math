#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Biases in Behavioral Finance 🧠💰]
#v(40pt)
#only("1-")[Which of the following is a strategy to mitigate biases in Behavioral Finance?]
#v(40pt)
#only("2-")[a) Ignoring biases 🙈]
#v(10pt)
#only("3-")[b) Education and awareness 📚]
#v(10pt)
#only("4-")[c) Predicting stock prices 📈]
#v(10pt)
#only("5-")[d) Calculating interest rates 🧮]
#only("1")[#voiceover("Let's test your knowledge on mitigating biases in Behavioral Finance. Which of the following is a strategy to mitigate biases?")]
#only("2")[#voiceover("Is it ignoring biases,")]
#only("3")[#voiceover("or is it education and awareness,")]
#only("4")[#voiceover("or maybe predicting stock prices,")]
#only("5")[#voiceover("or is it calculating interest rates?")]
]#questionDef(
questionText: "Which of the following is a strategy to mitigate biases in Behavioral Finance?",
answerOptions: ("Ignoring biases", "Education and awareness", "Predicting stock prices", "Calculating interest rates"),
correctAnswerIndex: 1,
)