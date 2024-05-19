#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear System of Equations]
// The title "Linear System of Equations" is shown on this slide
#v(40pt)
#only("1-")[What is a linear system of equations?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Multiple linear equations with different variables]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Multiple linear equations with the same set of variables]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) A single linear equation]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) A set of quadratic equations]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of linear systems of equations. What is a linear system of equations?")]
#only("2")[#voiceover("Is it multiple linear equations with different variables,")]
#only("3")[#voiceover("or is it multiple linear equations with the same set of variables,")]
#only("4")[#voiceover("or maybe just a single linear equation,")]
#only("5")[#voiceover("or is it a set of quadratic equations?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is a linear system of equations?",
answerOptions: ("Multiple linear equations with different variables", "Multiple linear equations with the same set of variables", "A single linear equation", "A set of quadratic equations"),
correctAnswerIndex: 1,
)