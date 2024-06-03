#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance 🧠💰]
#v(40pt)
#only("1-")[What does Behavioral Finance study?]
#v(40pt)
#only("2-")[a) Market trends 📈]
#v(10pt)
#only("3-")[b) Psychological influences on financial decisions 🧠💭]
#v(10pt)
#only("4-")[c) Economic policies 🏛️]
#v(10pt)
#only("5-")[d) Interest rates 💸]
#only("1")[#voiceover("Let's test your knowledge on Behavioral Finance. What does Behavioral Finance study?")]
#only("2")[#voiceover("Does it study market trends,")]
#only("3")[#voiceover("or does it study psychological influences on financial decisions,")]
#only("4")[#voiceover("or maybe economic policies,")]
#only("5")[#voiceover("or does it study interest rates?")]
]#questionDef(
questionText: "What does Behavioral Finance study?",
answerOptions: ("Market trends", "Psychological influences on financial decisions", "Economic policies", "Interest rates"),
correctAnswerIndex: 1,
)