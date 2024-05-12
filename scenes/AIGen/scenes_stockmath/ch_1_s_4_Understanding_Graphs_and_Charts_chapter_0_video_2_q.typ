#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphs and Charts in Stock Trading]
#v(40pt)
#only("1-")[What is the primary purpose of using graphs and charts in stock trading? 📊]
#v(40pt)
#only("2-")[a) To visualize data 📈]
#v(10pt)
#only("3-")[b) To create complex reports 📜]
#v(10pt)
#only("4-")[c) To increase data volume 📦]
#v(10pt)
#only("5-")[d) To confuse traders 😵]
#only("1")[#voiceover("Let's test your knowledge on the purpose of graphs and charts in stock trading. What is their primary purpose?")]
#only("2")[#voiceover("Is it to visualize data,")]
#only("3")[#voiceover("or to create complex reports,")]
#only("4")[#voiceover("or maybe to increase data volume,")]
#only("5")[#voiceover("or is it to confuse traders?")]
]#questionDef(
questionText: "What is the primary purpose of using graphs and charts in stock trading?",
answerOptions: ("To visualize data", "To create complex reports", "To increase data volume", "To confuse traders"),
correctAnswerIndex: 0
)