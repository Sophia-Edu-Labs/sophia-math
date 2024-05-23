#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Kernel of a Linear Mapping]
// The title "Kernel of a Linear Mapping" is shown on this slide
#v(40pt)
#only("1-")[The kernel of a linear mapping $T$ is the set of all vectors $v$ such that:]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $T(v) = v$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $T(v) = 0$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $T(v) = 1$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $T(v) = -v$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of the kernel of a linear mapping. The kernel of a linear mapping T is the set of all vectors v such that:")]
#only("2")[#voiceover("T of v equals v,")]
#only("3")[#voiceover("or T of v equals 0,")]
#only("4")[#voiceover("or T of v equals 1,")]
#only("5")[#voiceover("or T of v equals negative v?")]
]#questionDef(
questionText: "The kernel of a linear mapping $T$ is the set of all vectors $v$ such that:",
answerOptions: ("$T(v) = v$", "$T(v) = 0$", "$T(v) = 1$", "$T(v) = -v$"),
correctAnswerIndex: 1,
)