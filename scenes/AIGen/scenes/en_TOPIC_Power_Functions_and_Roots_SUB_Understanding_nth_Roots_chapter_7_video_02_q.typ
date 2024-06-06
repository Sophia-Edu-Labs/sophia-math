#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Complex n-th Roots]
// The title "Complex n-th Roots" is shown on this slide
#v(40pt)
#only("1-")[What is $sqrt[4]{-16}$ in complex form?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) 2i]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) 4i]
// Answer option b) is shown from slide 3 onward
#v(10pt) 
#only("4-")[c) 2]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) 4]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on complex n-th roots. What is the fourth root of negative sixteen in complex form?")]
#only("2")[#voiceover("Is it 2i,")]
#only("3")[#voiceover("or is it 4i,")]
#only("4")[#voiceover("or maybe just 2,")]
#only("5")[#voiceover("or is it 4?")]
]#questionDef(
questionText: "What is $\sqrt[4]{-16}$ in complex form?",
answerOptions: ("$2i$", "$4i$", "$2$", "$4$"),
correctAnswerIndex: 0
)