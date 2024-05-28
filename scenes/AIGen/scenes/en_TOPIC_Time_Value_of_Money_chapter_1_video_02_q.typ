#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Time Value of Money 💰⏰]
#v(40pt)
#only("1-")[What does PV stand for?]
#v(40pt)
#only("2-")[a) Potential Value]
#v(10pt)
#only("3-")[b) Present Value]
#v(10pt)
#only("4-")[c) Past Value]
#v(10pt)
#only("5-")[d) Projected Value]
#only("1")[#voiceover("Let's test your knowledge on the time value of money. What does the abbreviation PV stand for?")]
#only("2")[#voiceover("Does it stand for Potential Value,")]
#only("3")[#voiceover("or does it stand for Present Value,")]
#only("4")[#voiceover("or maybe Past Value,")]
#only("5")[#voiceover("or does it stand for Projected Value?")]
]#questionDef(
questionText: "What does $PV$ stand for?",
answerOptions: ("Potential Value", "Present Value", "Past Value", "Projected Value"),
correctAnswerIndex: 1,
)