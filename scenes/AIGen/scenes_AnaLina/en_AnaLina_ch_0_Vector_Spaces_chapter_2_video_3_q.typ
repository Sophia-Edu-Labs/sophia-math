#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Subspaces of $RR^3$]
#v(40pt)
#only("1-")[Which of the following is a subspace of $RR^3$?]
#v(40pt)
#only("2-")[a) The set of all vectors with integer components]
#v(10pt)
#only("3-")[b) The set of all vectors with non-negative components]
#v(10pt)
#only("4-")[c) The set of all vectors lying on a plane through the origin]
#v(10pt)
#only("5-")[d) The set of all vectors with at least one zero component]
#only("1")[#voiceover("Let's test your understanding of subspaces. Which of the following is a subspace of R 3?")]
#only("2")[#voiceover("Is it the set of all vectors with integer components,")]
#only("3")[#voiceover("or the set of all vectors with non-negative components,")]
#only("4")[#voiceover("or the set of all vectors lying on a plane through the origin,")]
#only("5")[#voiceover("or the set of all vectors with at least one zero component?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which of the following is a subspace of $\mathbb{R}^3$?", 
answerOptions: ("The set of all vectors with integer components", "The set of all vectors with non-negative components", "The set of all vectors lying on a plane through the origin", "The set of all vectors with at least one zero component"),
correctAnswerIndex: 2,  
)