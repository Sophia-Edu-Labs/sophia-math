#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Applications of n-th Roots 🌿]
#v(40pt)
#only("1-")[Which of the following is an application of n-th roots? 🤔]
#v(40pt)
#only("2-")[a) Calculating interest rates 📈]
#v(10pt)
#only("3-")[b) Determining speeds 🚗💨]
#v(10pt)
#only("4-")[c) Measuring distances 📏]
#v(10pt)
#only("5-")[d) All of the above 🌟]

#only("1")[#voiceover("Let's test your knowledge on the applications of n-th roots. Which of the following is an application of n-th roots?")]
#only("2")[#voiceover("Is it calculating interest rates,")]
#only("3")[#voiceover("or determining speeds,")]
#only("4")[#voiceover("or measuring distances,")]
#only("5")[#voiceover("or are all of the above applications of n-th roots?")]
]#questionDef(
questionText: "Which of the following is an application of $n$-th roots?",
answerOptions: ("Calculating interest rates", "Determining speeds", "Measuring distances", "All of the above"),
correctAnswerIndex: 3
)