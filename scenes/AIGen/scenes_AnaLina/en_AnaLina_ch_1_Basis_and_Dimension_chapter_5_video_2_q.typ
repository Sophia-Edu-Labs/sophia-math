#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Coordinates with Respect to a Basis]
// The title "Coordinates with Respect to a Basis" is shown on this slide
#v(40pt)
#only("1-")[The coordinates of a vector with respect to a basis are the \_\_\_\_\_ of the linear combination of the basis vectors that equals the vector.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) vectors 📐]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) coefficients 🧮]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) dimensions 📏]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) spans 🌌]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of coordinates with respect to a basis. The coordinates of a vector with respect to a basis are the \_\_\_\_\_ of the linear combination of the basis vectors that equals the vector.")]
#only("2")[#voiceover("Are they the vectors,")]
#only("3")[#voiceover("or are they the coefficients,")]
#only("4")[#voiceover("or maybe the dimensions,")]
#only("5")[#voiceover("or are they the spans?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "The coordinates of a vector with respect to a basis are the \_\_\_\_\_ of the linear combination of the basis vectors that equals the vector.",
answerOptions: ("vectors", "coefficients", "dimensions", "spans"),
correctAnswerIndex: 1,
)