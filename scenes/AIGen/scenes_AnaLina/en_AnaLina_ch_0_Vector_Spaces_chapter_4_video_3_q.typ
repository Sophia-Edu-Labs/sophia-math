#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Combinations]
// The title "Linear Combinations" is shown on this slide
#v(40pt)
#only("1-")[Given vectors: $vec(u) = (1, 0)$ and $vec(v) = (0, 1)$]
// The given vectors are shown from slide 1 onward
#v(40pt)
#only("2-")[Which is #text(weight: "bold")[not] a linear combination of $vec(u)$ and $vec(v)$?]
// The question is shown from slide 2 onward
#v(40pt)
#only("3-")[a) $(1, 1)$]
// Answer option a) is shown from slide 3 onward
#v(10pt)
#only("4-")[b) $(2, -1)$]
// Answer option b) is shown from slide 4 onward
#v(10pt)
#only("5-")[c) $(0, 0)$]
// Answer option c) is shown from slide 5 onward
#v(10pt)
#only("6-")[d) $(1, 2, 3)$]
// Answer option d) is shown from slide 6 onward
#only("1")[#voiceover("Consider the vectors u equals open parenthesis 1 comma 0 close parenthesis and v equals open parenthesis 0 comma 1 close parenthesis.")]
#only("2")[#voiceover("Which of the following is not a linear combination of u and v?")]
#only("3")[#voiceover("Is it the vector open parenthesis 1 comma 1 close parenthesis,")]
#only("4")[#voiceover("or the vector open parenthesis 2 comma negative 1 close parenthesis,")]
#only("5")[#voiceover("or maybe the zero vector open parenthesis 0 comma 0 close parenthesis,")]
#only("6")[#voiceover("or is it the vector open parenthesis 1 comma 2 comma 3 close parenthesis?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which of the following is not a linear combination of the vectors $\vec{u} = (1, 0)$ and $\vec{v} = (0, 1)$?",
answerOptions: ("$(1, 1)$", "$(2, -1)$", "$(0, 0)$", "$(1, 2, 3)$"),
correctAnswerIndex: 3,
)