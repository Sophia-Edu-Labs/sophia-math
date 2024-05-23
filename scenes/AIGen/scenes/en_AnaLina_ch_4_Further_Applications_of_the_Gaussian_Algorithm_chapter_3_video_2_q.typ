#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Invertibility]
// The title "Matrix Invertibility" is shown on this slide
#v(40pt)
#only("1-")[A matrix is invertible if its rank is equal to its number of \_\_\_\_\_.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) non-zero elements]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) rows or columns]
// Answer option b) is shown from slide 3 onward 
#v(10pt)
#only("4-")[c) rows]
// Answer option c) is shown from slide 4 onward
#v(10pt) 
#only("5-")[d) columns]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on matrix invertibility. A matrix is invertible if its rank is equal to its number of what?")]
#only("2")[#voiceover("Is it equal to its number of non-zero elements,")]
#only("3")[#voiceover("or its number of rows or columns,")]
#only("4")[#voiceover("or just its number of rows,")]
#only("5")[#voiceover("or just its number of columns?")]
]#questionDef(
questionText: "A matrix is invertible if its rank is equal to its number of \\textit{rows or columns}.",
answerOptions: ("non-zero elements", "rows or columns", "rows", "columns"),
correctAnswerIndex: 1,
)