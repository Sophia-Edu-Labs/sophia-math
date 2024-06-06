#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Notation for n-th Roots]
// The title "Notation for n-th Roots" is shown on this slide
#v(40pt)
#only("1-")[How is the 5th root of 32 written in notation?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $root(2, 32)$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $root(3, 32)$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $root(4, 32)$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $root(5, 32)$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the notation for n-th roots. How is the 5th root of 32 written in notation?")]
#only("2")[#voiceover("Is it root of 2 comma 32,")]
#only("3")[#voiceover("or is it root of 3 comma 32,")]
#only("4")[#voiceover("or maybe root of 4 comma 32,")]
#only("5")[#voiceover("or is it root of 5 comma 32?")]
]#questionDef(
questionText: "How is the 5th root of $32$ written in notation?",
answerOptions: ("$\\sqrt[2]{32}$", "$\\sqrt[3]{32}$", "$\\sqrt[4]{32}$", "$\\sqrt[5]{32}$"),
correctAnswerIndex: 3,
)