#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance]
#v(40pt)
#only("1-")[Which of the following is a key focus of Behavioral Finance? 🔍]
#v(40pt)
#only("2-")[a) Interest rates 📈]
#v(10pt)
#only("3-")[b) Psychological biases 🧠]
#v(10pt) 
#only("4-")[c) Corporate law ⚖]
#v(10pt)
#only("5-")[d) Banking systems 🏦]

#only("1")[
#voiceover("Let's test your understanding of Behavioral Finance. Which of the following is a key focus of this field?")
]
#only("2")[
#voiceover("Is it interest rates,") 
]
#only("3")[
#voiceover("psychological biases,")
]
#only("4")[
#voiceover("corporate law,")
]
#only("5")[
#voiceover("or banking systems?")
]
]#questionDef(
questionText: "Which of the following is a key focus of Behavioral Finance?",
answerOptions: ("Interest rates", "Psychological biases", "Corporate law", "Banking systems"),
correctAnswerIndex: 1
)