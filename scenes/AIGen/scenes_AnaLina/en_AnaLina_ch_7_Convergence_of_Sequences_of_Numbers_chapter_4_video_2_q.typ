#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergence to Infinity]
// The title "Divergence to Infinity" is shown on this slide
#v(40pt)
#only("1-")[A sequence diverges to infinity if its terms \_\_\_\_\_.]
// The question stem is shown from slide 1 onward
#v(40pt)
#only("2-")[a) decrease without bound]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) oscillate]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) increase without bound]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) stay constant]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of divergence to infinity. A sequence diverges to infinity if its terms...")]
#only("2")[#voiceover("decrease without bound,")]
#only("3")[#voiceover("oscillate,")]
#only("4")[#voiceover("increase without bound,")]
#only("5")[#voiceover("or stay constant?")]
]#questionDef(
questionText: "A sequence diverges to infinity if its terms \_\_\_\_\_.",
answerOptions: ("decrease without bound", "oscillate", "increase without bound", "stay constant"),
correctAnswerIndex: 2,
)