#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse Functions on Graphs]
// The title "Inverse Functions on Graphs" is shown on this slide
#v(40pt)
#only("1-")[On a graph, how can you identify an inverse function? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) It is the reflection over the x-axis]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) It is the reflection over the y-axis]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) It is the reflection over the line $y = x$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) It is the reflection over the origin]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of inverse functions. On a graph, how can you identify an inverse function?")]
#only("2")[#voiceover("Is it the reflection over the x-axis,")]
#only("3")[#voiceover("or is it the reflection over the y-axis,")]
#only("4")[#voiceover("or maybe it's the reflection over the line y equals x,")]
#only("5")[#voiceover("or is it the reflection over the origin?")]
]#questionDef(
questionText: "On a graph, how can you identify an inverse function?",
answerOptions: ("It is the reflection over the x-axis", "It is the reflection over the y-axis", "It is the reflection over the line $y = x$", "It is the reflection over the origin"),
correctAnswerIndex: 2,
)