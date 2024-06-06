#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Traditional Finance Assumptions]
// The title is shown on this slide
#v(40pt)
#only("1-")[According to traditional finance, investors are assumed to be \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) irrational 🤪]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) rational 🧐]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) emotional 😭]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) unpredictable 🎲]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on traditional finance assumptions. According to traditional finance, investors are assumed to be...")]
#only("2")[#voiceover("irrational,")]
#only("3")[#voiceover("or rational,")]
#only("4")[#voiceover("or emotional,")]
#only("5")[#voiceover("or unpredictable?")]
]#questionDef(
questionText: "According to traditional finance, investors are assumed to be _____.",
answerOptions: ("irrational", "rational", "emotional", "unpredictable"),
correctAnswerIndex: 1
)