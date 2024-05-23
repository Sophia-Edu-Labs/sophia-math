#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension Formula]
// The title "Dimension Formula" is shown on this slide
#v(40pt)
#only("1-")[The dimension formula for a linear mapping $T: V -> W$ helps in understanding the relationship between:]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) The kernel and image of a linear mapping]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) The domain and codomain of a linear mapping]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) The vectors and scalars in a vector space]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) The basis and dimension of a vector space]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of the dimension formula. The dimension formula for a linear mapping T from V to W helps in understanding the relationship between:")]
#only("2")[#voiceover("The kernel and image of a linear mapping,")]
#only("3")[#voiceover("or the domain and codomain of a linear mapping,")]
#only("4")[#voiceover("or the vectors and scalars in a vector space,")]
#only("5")[#voiceover("or the basis and dimension of a vector space?")]
]#questionDef(
questionText: "The dimension formula for a linear mapping $T: V \\to W$ helps in understanding the relationship between:",
answerOptions: ("The kernel and image of a linear mapping", "The domain and codomain of a linear mapping", "The vectors and scalars in a vector space", "The basis and dimension of a vector space"),
correctAnswerIndex: 0,
)