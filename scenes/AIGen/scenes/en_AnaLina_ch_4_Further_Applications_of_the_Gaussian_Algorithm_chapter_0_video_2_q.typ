#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rank of a Matrix]
// The title "Rank of a Matrix" is shown on this slide
#v(40pt)
#only("1-")[The rank of a matrix is the maximum number of \_\_\_\_\_.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) rows]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) columns]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) linearly independent row or column vectors]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) non-zero elements]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the rank of a matrix. The rank of a matrix is the maximum number of what?")]
#only("2")[#voiceover("Is it the maximum number of rows,")]
#only("3")[#voiceover("or the maximum number of columns,")]
#only("4")[#voiceover("or the maximum number of linearly independent row or column vectors,")]
#only("5")[#voiceover("or the maximum number of non-zero elements?")]
]#questionDef(
questionText: "The rank of a matrix is the maximum number of \_\_\_\_\_.",
answerOptions: ("rows", "columns", "linearly independent row or column vectors", "non-zero elements"),
correctAnswerIndex: 2,
)