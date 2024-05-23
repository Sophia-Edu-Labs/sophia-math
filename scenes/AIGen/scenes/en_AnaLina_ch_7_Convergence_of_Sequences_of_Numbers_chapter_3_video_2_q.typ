#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Convergence of Sequences]
// The title "Convergence of Sequences" is shown on this slide
#v(40pt)
#only("1-")[A sequence $a_n$ converges to $L$ if for every $epsilon > 0$, there exists an $N$ such that for all $n >= N$, $|a_n - L|$ is \_\_\_\_\_.]
// The statement about convergence is shown from slide 1 onward
#v(40pt)
#only("2-")[a) greater than $epsilon$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) less than $epsilon$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) equal to $epsilon$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) not equal to $epsilon$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of sequence convergence. A sequence a_n converges to L if for every epsilon greater than 0, there exists an N such that for all n greater than or equal to N, the absolute value of a_n minus L is...")]
#only("2")[#voiceover("greater than epsilon,")]
#only("3")[#voiceover("less than epsilon,")]
#only("4")[#voiceover("equal to epsilon,")]
#only("5")[#voiceover("or not equal to epsilon?")]
]#questionDef(
questionText: "A sequence $a_n$ converges to $L$ if for every $\epsilon > 0$, there exists an $N$ such that for all $n \geq N$, $|a_n - L|$ is \_\_\_\_\_.",
answerOptions: ("greater than $\epsilon$", "less than $\epsilon$", "equal to $\epsilon$", "not equal to $\epsilon$"),
correctAnswerIndex: 1,
)