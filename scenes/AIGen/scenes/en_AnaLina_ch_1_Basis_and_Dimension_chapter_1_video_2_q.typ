#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence]
// The title "Linear Independence" is shown on this slide
#v(40pt)
#only("1-")[To test for linear independence, we can set up a matrix with the vectors as \_\_\_\_\_.] 
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) rows]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) columns]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) diagonals]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) both rows and columns]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("To test for linear independence, we can set up a matrix with the vectors as what?")]
#only("2")[#voiceover("As rows,")]
#only("3")[#voiceover("or as columns,")]
#only("4")[#voiceover("or as diagonals,")]
#only("5")[#voiceover("or as both rows and columns?")]
]#questionDef(
questionText: "To test for linear independence, we can set up a matrix with the vectors as \_\_\_\_\_.",
answerOptions: ("rows", "columns", "diagonals", "both rows and columns"),
correctAnswerIndex: 1,
)