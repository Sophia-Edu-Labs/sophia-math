#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Rank]
// The title "Finding the Rank" is shown on this slide
#v(40pt)
#only("1-")[To find the rank of a matrix, we transform it to its \_\_\_\_\_.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) diagonal form]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) row echelon form]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) inverse form]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) transpose form]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on finding the rank of a matrix. To find the rank of a matrix, we transform it to its...")]
#only("2")[#voiceover("diagonal form,")]
#only("3")[#voiceover("or row echelon form,")]
#only("4")[#voiceover("or inverse form,")]
#only("5")[#voiceover("or transpose form?")]
]#questionDef(
questionText: "To find the rank of a matrix, we transform it to its \\_\\_\\_\\_.",
answerOptions: ("diagonal form", "row echelon form", "inverse form", "transpose form"),
correctAnswerIndex: 1,
)