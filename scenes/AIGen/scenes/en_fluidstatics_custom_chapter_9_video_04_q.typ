#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Environmental Concerns]
// The title "Environmental Concerns" is shown on this slide
#v(40pt)
#only("1-")[What is a common environmental concern associated with hydroelectric power plants? 🌿]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Air pollution 🌫️]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Noise pollution 🔊]
// Answer option b) is shown from slide 3 onward
#v(10pt)  
#only("4-")[c) Habitat disruption 🐟]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Greenhouse gas emissions 🏭]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's consider the environmental impact of hydroelectric power plants. What is a common environmental concern associated with these facilities?")]
#only("2")[#voiceover("Is it air pollution,")]
#only("3")[#voiceover("or noise pollution,")]
#only("4")[#voiceover("or maybe habitat disruption,")]  
#only("5")[#voiceover("or could it be greenhouse gas emissions?")]
]#questionDef(
questionText: "What is a common environmental concern associated with hydroelectric power plants?",
answerOptions: ("Air pollution", "Noise pollution", "Habitat disruption", "Greenhouse gas emissions"),
correctAnswerIndex: 2
)