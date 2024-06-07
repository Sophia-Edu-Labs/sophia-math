#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Root Exercise]
// The title "n-th Root Exercise" is shown on this slide
#v(40pt)
#only("1-")[What is $root(3, 8 8 27)$?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) 2]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) 3]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) 6]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) 9]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's practice what you've learned about n-th roots. What is the cube root of 8 times 8 times 27?")]
#only("2")[#voiceover("Is it 2,")]
#only("3")[#voiceover("or is it 3,")]
#only("4")[#voiceover("or maybe 6,")]
#only("5")[#voiceover("or is it 9?")]
]#questionDef(
questionText: "What is $\sqrt[3]{8 \times 8 \times 27}$?",
answerOptions: ("$2$", "$3$", "$6$", "$9$"),
correctAnswerIndex: 2
)