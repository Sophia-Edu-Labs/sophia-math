#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Product of Limits]
// The title "Product of Limits" is shown on this slide
#v(40pt)
#only("1-")[If $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$, then $lim_(n -> infinity) (a_n b_n)$ is \_\_\_\_\_.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $L + M$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $L - M$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $L M$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $L / M$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the product of limits. If the limit of the sequence a sub n as n approaches infinity equals L, and the limit of the sequence b sub n as n approaches infinity equals M, then what is the limit of the product of a sub n and b sub n as n approaches infinity?")]
#only("2")[#voiceover("Is it L plus M,")]
#only("3")[#voiceover("or is it L minus M,")]
#only("4")[#voiceover("or maybe L times M,")]
#only("5")[#voiceover("or is it L divided by M?")]
]#questionDef(
questionText: "If $\\lim_{n \\to \\infty} a_n = L$ and $\\lim_{n \\to \\infty} b_n = M$, then $\\lim_{n \\to \\infty} (a_n b_n)$ is \_\_\_\_.",
answerOptions: ("$L + M$", "$L - M$", "$L M$", "$L / M$"),
correctAnswerIndex: 2
)