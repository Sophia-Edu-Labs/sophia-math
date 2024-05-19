#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Addition]
// The title "Matrix Addition" is shown on this slide
#v(40pt)
#only("1-")[Can the following matrices be added?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[

$mat(1, 2; 3, 4)$
]
// The first matrix is shown from slide 2 onward
#v(40pt)
#only("3-")[

$mat(5, 6; 7, 8)$
]
// The second matrix is shown from slide 3 onward
#v(40pt)
#only("4-")[a) Yes]
// Answer option a) is shown from slide 4 onward
#v(10pt)
#only("5-")[b) No]
// Answer option b) is shown from slide 5 onward

#only("1")[#voiceover("Let's test your knowledge on matrix addition. Can the following two matrices be added together?")]
#only("2")[#voiceover("The first matrix is a 2 by 2 matrix with elements 1, 2, 3, and 4.")]
#only("3")[#voiceover("The second matrix is also a 2 by 2 matrix with elements 5, 6, 7, and 8.")]
#only("4")[#voiceover("Is it possible to add these two matrices? Option a) Yes")]
#only("5")[#voiceover("or option b) No?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Can the matrices $\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$ and $\begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix}$ be added?",
answerOptions: ("Yes", "No"),
correctAnswerIndex: 0,
)