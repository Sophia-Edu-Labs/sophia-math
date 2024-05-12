#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance]
#v(40pt)
#only("1-")[What does Behavioral Finance study?]
#v(40pt)
#only("2-")[a) Mathematical calculations in finance 🧮]
#v(10pt)
#only("3-")[b) Psychological influences on financial decisions 🧠]
#v(10pt) 
#only("4-")[c) Economic policies 📊]
#v(10pt)
#only("5-")[d) Stock market regulations 📜]
#only("1")[#voiceover("Let's test your knowledge on Behavioral Finance. What does this field of study focus on?")]
#only("2")[#voiceover("Does it study mathematical calculations in finance,")]  
#only("3")[#voiceover("psychological influences on financial decisions,")]
#only("4")[#voiceover("economic policies,")]
#only("5")[#voiceover("or stock market regulations?")]
]#questionDef(
questionText: "What does Behavioral Finance study?",  
answerOptions: ("Mathematical calculations in finance", "Psychological influences on financial decisions", "Economic policies", "Stock market regulations"),
correctAnswerIndex: 1
)