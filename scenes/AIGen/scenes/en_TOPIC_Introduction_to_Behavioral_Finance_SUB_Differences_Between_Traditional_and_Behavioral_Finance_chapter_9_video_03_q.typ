#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Prospect Theory]
#v(40pt)
#only("1-")[According to prospect theory, what does it highlight the impact of? 🤔]
#v(40pt)
#only("2-")[a) Market efficiency 📈]
#v(10pt)
#only("3-")[b) Rational behavior 🧠]
#v(10pt)
#only("4-")[c) Loss aversion 📉]
#v(10pt)  
#only("5-")[d) Utility maximization 📏]

#only("1")[#voiceover("Let's test your knowledge on prospect theory. According to prospect theory, what does it highlight the impact of?")]
#only("2")[#voiceover("Is it market efficiency,")]  
#only("3")[#voiceover("or rational behavior,")]
#only("4")[#voiceover("or maybe loss aversion,")]
#only("5")[#voiceover("or utility maximization?")]
]#questionDef(
questionText: "According to prospect theory, what does it highlight the impact of?",
answerOptions: ("Market efficiency", "Rational behavior", "Loss aversion", "Utility maximization"),
correctAnswerIndex: 2
)