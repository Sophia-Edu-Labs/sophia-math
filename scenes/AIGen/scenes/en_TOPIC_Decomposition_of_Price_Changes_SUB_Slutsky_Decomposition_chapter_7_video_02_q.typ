#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition 🔍]
#v(40pt)
#only("1-")[Slutsky Decomposition can be used to analyze \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) consumer behavior 🛒]
#v(10pt)
#only("3-")[b) producer behavior 🏭]
#v(10pt)
#only("4-")[c) market equilibrium ⚖]
#v(10pt)
#only("5-")[d) government policies 🏛]
#only("1")[#voiceover("Let's test your knowledge on Slutsky Decomposition. Slutsky Decomposition can be used to analyze...")]
#only("2")[#voiceover("Is it consumer behavior,")]
#only("3")[#voiceover("or producer behavior,")]
#only("4")[#voiceover("or maybe market equilibrium,")]
#only("5")[#voiceover("or government policies?")]
]#questionDef(
questionText: "Slutsky Decomposition can be used to analyze ______.",
answerOptions: ("consumer behavior", "producer behavior", "market equilibrium", "government policies"),
correctAnswerIndex: 0
)