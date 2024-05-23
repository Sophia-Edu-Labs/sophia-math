#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Coordinates in Vector Spaces]
// The title "Coordinates in Vector Spaces" is shown on this slide
#v(40pt)
#only("1-")[What do coordinates uniquely identify in a vector space?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) A line]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) A point]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) A plane]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) A vector]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of coordinates in vector spaces. What do coordinates uniquely identify in a vector space?")]
#only("2")[#voiceover("Is it a line,")]
#only("3")[#voiceover("or is it a point,")]
#only("4")[#voiceover("or maybe a plane,")]
#only("5")[#voiceover("or is it a vector?")]
]#questionDef(
questionText: "What do coordinates uniquely identify in a vector space?",
answerOptions: ("A line", "A point", "A plane", "A vector"),
correctAnswerIndex: 1,
)