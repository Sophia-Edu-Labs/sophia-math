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
#only("1-")[Given vectors $vec(u)$ and $vec(v)$, which of the following is a linear combination of these vectors? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $vec(u) + vec(v)$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $2 vec(u) - 3 vec(v)$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $-vec(u) + 4 vec(v)$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) All of the above]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of linear combinations. Given vectors u and v, which of the following is a linear combination of these vectors?")]
#only("2")[#voiceover("Is it the sum of vector u and vector v,")]
#only("3")[#voiceover("or is it 2 times vector u minus 3 times vector v,")]
#only("4")[#voiceover("or maybe negative vector u plus 4 times vector v,")]
#only("5")[#voiceover("or could it be that all of the above are linear combinations of u and v?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which of the following is a linear combination of the vectors $\vec{u}$ and $\vec{v}$?",
answerOptions: ("$\vec{u} + \vec{v}$", "$2 \vec{u} - 3 \vec{v}$", "$-\vec{u} + 4 \vec{v}$", "All of the above"),
correctAnswerIndex: 3,
)