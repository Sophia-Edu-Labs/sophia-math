#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Roots]
// The title "n-th Roots" is shown on this slide
#v(40pt)
#only("1-")[The n-th root of a number is a value that, when raised to the power of n, gives the \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) root 🌱]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) original number 🔢]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) square ⬜]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) cube 🎲]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of n-th roots. The n-th root of a number is a value that, when raised to the power of n, gives the blank.")]
#only("2")[#voiceover("Is it the root,")]
#only("3")[#voiceover("or the original number,")]
#only("4")[#voiceover("or the square,")]
#only("5")[#voiceover("or the cube?")]
]#questionDef(
questionText: "The $n$-th root of a number is a value that, when raised to the power of $n$, gives the _____.",
answerOptions: ("root", "original number", "square", "cube"),
correctAnswerIndex: 1,
)