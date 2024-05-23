#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mappings]
// The title "Linear Mappings" is shown on this slide
#v(40pt)
#only("1-")[If $T$ is a linear mapping, then $T(0)$ is equal to:]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) 0]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) 1]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $T(1)$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of linear mappings. If T is a linear mapping, then what is T of 0 equal to?")]
#only("2")[#voiceover("Is it equal to 0,")]
#only("3")[#voiceover("or is it equal to 1,")]
#only("4")[#voiceover("or maybe it's equal to T of 1,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "If $T$ is a linear mapping, then $T(0)$ is equal to:",
answerOptions: ("0", "1", "$T(1)$", "None of the above"),
correctAnswerIndex: 0,
)