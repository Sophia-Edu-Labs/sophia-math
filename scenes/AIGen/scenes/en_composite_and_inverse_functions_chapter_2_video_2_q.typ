#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composite Functions in Modeling]
// The title "Composite Functions in Modeling" is shown on this slide
#v(40pt)
#only("1-")[Which scenario can be modeled by composite functions?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Speed and distance 🏎️📏]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Population and food supply 👥🍽️]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Temperature and energy consumption 🌡️⚡]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) All of the above 🌍]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of composite functions in modeling. Which of the following scenarios can be modeled by composite functions?")]
#only("2")[#voiceover("Is it the relationship between speed and distance,")]
#only("3")[#voiceover("or the relationship between population and food supply,")]
#only("4")[#voiceover("or maybe the relationship between temperature and energy consumption,")]
#only("5")[#voiceover("or are all of these scenarios suitable for modeling with composite functions?")]
]#questionDef(
questionText: "Which scenario can be modeled by composite functions?",
answerOptions: ("Speed and distance", "Population and food supply", "Temperature and energy consumption", "All of the above"),
correctAnswerIndex: 3,
)