#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[pH Scale 🧪]
#v(40pt)
#only("1-")[What pH value represents a neutral solution?]
#v(40pt)
#only("2-")[a) 0]
#v(10pt)
#only("3-")[b) 7]
#v(10pt)
#only("4-")[c) 14]
#v(10pt)
#only("5-")[d) 10]
#only("1")[#voiceover("Let's test your knowledge on the pH scale. What pH value represents a neutral solution?")]
#only("2")[#voiceover("Is it a pH of 0,")]
#only("3")[#voiceover("or is it a pH of 7,")]
#only("4")[#voiceover("or maybe a pH of 14,")]
#only("5")[#voiceover("or is it a pH of 10?")]
]#questionDef(
questionText: "What $pH$ value represents a neutral solution?",
answerOptions: ("$0$", "$7$", "$14$", "$10$"),
correctAnswerIndex: 1,
)