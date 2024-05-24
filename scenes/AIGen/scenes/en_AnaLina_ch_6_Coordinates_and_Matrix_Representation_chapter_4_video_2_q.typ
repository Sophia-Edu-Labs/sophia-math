#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Change of Basis]
// The title "Change of Basis" is shown on this slide
#v(40pt)
#only("1-")[Changing the basis involves finding a new set of \_\_\_\_ vectors.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) dependent]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) independent]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) basis]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) orthogonal]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of change of basis. Changing the basis involves finding a new set of what kind of vectors?")]
#only("2")[#voiceover("Is it dependent vectors,")]
#only("3")[#voiceover("or independent vectors,")]
#only("4")[#voiceover("or basis vectors,")]
#only("5")[#voiceover("or orthogonal vectors?")]
]#questionDef(
questionText: "Changing the basis involves finding a new set of \\textit{basis} vectors.",
answerOptions: ("dependent", "independent", "basis", "orthogonal"),
correctAnswerIndex: 2,
)