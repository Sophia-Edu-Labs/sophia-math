#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications of Continuity]
#v(40pt)
#only("1-")[Which of the following is a real-world application of continuity? 🌍]
#v(40pt)
#only("2-")[a) Smooth transitions in engineering 🏗️]
#v(10pt)
#only("3-")[b) Predicting physical phenomena 🔮]
#v(10pt)
#only("4-")[c) Ensuring stability in systems 📈]
#v(10pt)
#only("5-")[d) All of the above 🌟]

#only("1")[#voiceover("Let's test your knowledge on the real-world applications of continuity.")]
#only("2")[#voiceover("Is it smooth transitions in engineering,")]
#only("3")[#voiceover("or predicting physical phenomena,")]
#only("4")[#voiceover("or ensuring stability in systems,")]
#only("5")[#voiceover("or are all of the above real-world applications of continuity?")]
]#questionDef(
questionText: "Which of the following is a real-world application of continuity?",
answerOptions: ("Smooth transitions in engineering", "Predicting physical phenomena", "Ensuring stability in systems", "All of the above"),
correctAnswerIndex: 3
)