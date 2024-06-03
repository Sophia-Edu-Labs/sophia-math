#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance vs Traditional Finance]
#v(40pt)
#only("1-")[How does Behavioral Finance differ from Traditional Finance?]
#v(40pt)
#only("2-")[a) Focuses on market trends 📈]
#v(10pt)
#only("3-")[b) Assumes rational behavior 🧠]
#v(10pt)
#only("4-")[c) Focuses on psychological factors 🧐]
#v(10pt) 
#only("5-")[d) Analyzes economic policies 📊]
#only("1")[#voiceover("Let's test your knowledge on how Behavioral Finance differs from Traditional Finance.")]
#only("2")[#voiceover("Does Behavioral Finance focus on market trends,")]
#only("3")[#voiceover("or does it assume rational behavior,")]
#only("4")[#voiceover("or does it focus on psychological factors,")]
#only("5")[#voiceover("or does it analyze economic policies?")]
]#questionDef(
questionText: "How does Behavioral Finance differ from Traditional Finance?",
answerOptions: ("Focuses on market trends", "Assumes rational behavior", "Focuses on psychological factors", "Analyzes economic policies"),
correctAnswerIndex: 2,
)