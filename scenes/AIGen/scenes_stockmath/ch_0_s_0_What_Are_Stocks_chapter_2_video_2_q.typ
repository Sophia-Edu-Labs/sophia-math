#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Math in Stock Trading]
#v(40pt)
#only("1-")[How does mathematics primarily help traders in stock trading? 🤔]
#v(40pt)
#only("2-")[a) Predict stock prices 📈]
#v(10pt)
#only("3-")[b) Design company logos 🎨]
#v(10pt)
#only("4-")[c) Write financial reports 📝]
#v(10pt)
#only("5-")[d) Organize team meetings 📅]

#only("1")[
#voiceover("Let's test your understanding of the role of mathematics in stock trading. How does mathematics primarily help traders in stock trading?")
]
#only("2")[
#voiceover("Is it used to predict stock prices,")
]
#only("3")[
#voiceover("to design company logos,") 
]
#only("4")[
#voiceover("to write financial reports,")
]
#only("5")[
#voiceover("or to organize team meetings?")
]
]#questionDef(
questionText: "Mathematics helps traders in stock trading mainly to",
answerOptions: ("Predict stock prices", "Design company logos", "Write financial reports", "Organize team meetings"),
correctAnswerIndex: 0
)