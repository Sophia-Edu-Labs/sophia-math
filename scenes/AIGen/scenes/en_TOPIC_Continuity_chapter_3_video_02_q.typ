#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity]
// The title "Continuity" is shown on this slide
#v(40pt)
#only("1-")[When is a function continuous at a point?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) When the limit of the function as $x$ approaches the point is equal to the function's value at that point]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) When the function is differentiable at that point]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) When the function is integrable at that point]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) When the function is zero at that point]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of continuity. When is a function continuous at a point?")]
#only("2")[#voiceover("Is it when the limit of the function as x approaches the point is equal to the function's value at that point,")]
#only("3")[#voiceover("or when the function is differentiable at that point,")]
#only("4")[#voiceover("or when the function is integrable at that point,")]
#only("5")[#voiceover("or when the function is zero at that point?")]
]#questionDef(
questionText: "When is a function continuous at a point?",
answerOptions: ("When the limit of the function as $x$ approaches the point is equal to the function's value at that point", "When the function is differentiable at that point", "When the function is integrable at that point", "When the function is zero at that point"),
correctAnswerIndex: 0,
)