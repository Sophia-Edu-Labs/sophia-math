#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuous Extendability 📈]
// The title "Continuous Extendability" with a graph emoji is shown on this slide
#v(40pt)
#only("1-")[When is a function continuously extendable?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) When it is already continuous]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) When it can be made continuous by defining or redefining its value at certain points]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) When it is differentiable]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) When it is integrable]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on continuous extendability. When is a function continuously extendable?")]
#only("2")[#voiceover("Is it when the function is already continuous,")]
#only("3")[#voiceover("or is it when the function can be made continuous by defining or redefining its value at certain points,")]
#only("4")[#voiceover("or is it when the function is differentiable,")]
#only("5")[#voiceover("or is it when the function is integrable?")]
]#questionDef(
questionText: "When is a function continuously extendable?",
answerOptions: ("When it is already continuous", "When it can be made continuous by defining or redefining its value at certain points", "When it is differentiable", "When it is integrable"),
correctAnswerIndex: 1,
)