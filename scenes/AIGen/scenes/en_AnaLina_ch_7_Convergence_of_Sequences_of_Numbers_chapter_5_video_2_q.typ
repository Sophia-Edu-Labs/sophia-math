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
#only("1-")[Which of the following sequences diverges to infinity? 🚀]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $a_n = 1/n$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $b_n = n$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $c_n = (-1)^n$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $d_n = 1/(n^2)$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of sequences that diverge to infinity. Which of the following sequences diverges to infinity?")]
#only("2")[#voiceover("Is it the sequence a sub n equals one over n,")]
#only("3")[#voiceover("or is it the sequence b sub n equals n,")]
#only("4")[#voiceover("or maybe the sequence c sub n equals negative one to the power of n,")]
#only("5")[#voiceover("or is it the sequence d sub n equals one over n squared?")]
]#questionDef(
questionText: "Which of the following sequences diverges to infinity?",
answerOptions: ("$a_n = \\frac{1}{n}$", "$b_n = n$", "$c_n = (-1)^n$", "$d_n = \\frac{1}{n^2}$"),
correctAnswerIndex: 1,
)