#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergence to Infinity]
// The title "Divergence to Infinity" is shown on this slide
#v(40pt)
#only("1-")[A sequence $a_n$ diverges to infinity if for every $M > 0$, there exists an $N$ such that for all $n >= N$, $a_n$ is \_\_\_\_\_.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) less than $M$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) greater than $M$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) equal to $M$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) not equal to $M$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of divergence to infinity. A sequence a sub n diverges to infinity if for every M greater than 0, there exists an N such that for all n greater than or equal to N, a sub n is...")]
#only("2")[#voiceover("less than M,")]
#only("3")[#voiceover("greater than M,")]
#only("4")[#voiceover("equal to M,")]
#only("5")[#voiceover("or not equal to M?")]
]#questionDef(
questionText: "A sequence $a_n$ diverges to infinity if for every $M > 0$, there exists an $N$ such that for all $n \geq N$, $a_n$ is \_\_\_\_\_.",
answerOptions: ("less than $M$", "greater than $M$", "equal to $M$", "not equal to $M$"),
correctAnswerIndex: 1,
)