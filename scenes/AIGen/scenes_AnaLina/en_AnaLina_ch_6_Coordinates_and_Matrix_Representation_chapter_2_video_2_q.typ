#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mappings]
// The title "Linear Mappings" is shown on this slide
#v(40pt)
#only("1-")[A linear mapping can be represented by a \_\_\_\_\_.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) vector]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) matrix]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) scalar]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) polynomial]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on linear mappings. A linear mapping can be represented by a what?")]
#only("2")[#voiceover("Is it represented by a vector,")]
#only("3")[#voiceover("or is it represented by a matrix,")]
#only("4")[#voiceover("or maybe by a scalar,")]
#only("5")[#voiceover("or is it represented by a polynomial?")]
]#questionDef(
questionText: "A linear mapping can be represented by a \_\_\_\_\_.",
answerOptions: ("vector", "matrix", "scalar", "polynomial"),
correctAnswerIndex: 1,
)