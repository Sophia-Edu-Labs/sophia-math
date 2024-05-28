#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity Check]
// The title "Continuity Check" is shown on this slide
#v(40pt)
#only("1-")[To check if a function is continuous at a point, we need to compare the limit of the function as $x$ approaches the point to the function's \_\_\_\_\_.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) derivative]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) integral]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) value at that point]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) second derivative]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of continuity. To check if a function is continuous at a point, we need to compare the limit of the function as x approaches the point to the function's blank.")]
#only("2")[#voiceover("Is it the function's derivative,")]
#only("3")[#voiceover("or is it the function's integral,")]
#only("4")[#voiceover("or maybe the function's value at that point,")]
#only("5")[#voiceover("or is it the function's second derivative?")]
]#questionDef(
questionText: "To check if a function is continuous at a point, we need to compare the limit of the function as $x$ approaches the point to the function's _value at that point_.",
answerOptions: ("derivative", "integral", "value at that point", "second derivative"),
correctAnswerIndex: 2,
)