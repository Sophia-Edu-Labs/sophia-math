#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Gaussian Algorithm]
// The title "Gaussian Algorithm" is shown on this slide
#v(40pt)
#only("1-")[After transforming the augmented matrix into an upper triangular form using the Gaussian Algorithm, what is the next step?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Find the determinant 🔍]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Perform back substitution ⏪]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Swap rows 🔄]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Multiply rows by scalars ✖]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of the Gaussian Algorithm. After transforming the augmented matrix into an upper triangular form using the Gaussian Algorithm, what is the next step?")]
#only("2")[#voiceover("Is it to find the determinant,")]
#only("3")[#voiceover("or to perform back substitution,")]
#only("4")[#voiceover("or to swap rows,")]
#only("5")[#voiceover("or to multiply rows by scalars?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "After transforming the augmented matrix into an upper triangular form using the Gaussian Algorithm, what is the next step?",
answerOptions: ("Find the determinant", "Perform back substitution", "Swap rows", "Multiply rows by scalars"),
correctAnswerIndex: 1,
)