#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Deep-Sea Diving Suit Material]
// The title "Deep-Sea Diving Suit Material" is shown on this slide
#v(40pt)
#only("1-")[Which material is most suitable for a deep-sea diving suit to withstand high pressures? 🤿]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Rubber 🧱]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Aluminum 🪨]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Steel 🦾]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Plastic 🟥]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on deep-sea diving suits. Which material is most suitable for a deep-sea diving suit to withstand high pressures?")]
#only("2")[#voiceover("Is it rubber,")]
#only("3")[#voiceover("or is it aluminum,")]
#only("4")[#voiceover("or maybe steel,")]
#only("5")[#voiceover("or is it plastic?")]
]#questionDef(
questionText: "Which material is most suitable for a deep-sea diving suit to withstand high pressures?",
answerOptions: ("Rubber", "Aluminum", "Steel", "Plastic"),
correctAnswerIndex: 2,
)