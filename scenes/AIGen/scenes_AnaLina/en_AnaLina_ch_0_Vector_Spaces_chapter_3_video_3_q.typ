#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Subspaces of ℝ²]
// The title "Subspaces of ℝ²" is shown on this slide
#v(40pt)
#only("1-")[Which of the following subsets of ℝ² is a subspace?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) The set of all vectors with positive components]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) The set of all vectors with integer components]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) The set of all vectors of the form $(x, 2x)$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) The set of all vectors with at least one zero component]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of subspaces. Which of the following subsets of R 2 is a subspace?")]
#only("2")[#voiceover("Is it the set of all vectors with positive components,")]
#only("3")[#voiceover("or the set of all vectors with integer components,")]
#only("4")[#voiceover("or maybe the set of all vectors of the form x, 2 x,")]
#only("5")[#voiceover("or is it the set of all vectors with at least one zero component?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which of the following subsets of $\mathbb{R}^2$ is a subspace?",
answerOptions: ("The set of all vectors with positive components", "The set of all vectors with integer components", "The set of all vectors of the form $(x, 2x)$", "The set of all vectors with at least one zero component"),
correctAnswerIndex: 2,
)