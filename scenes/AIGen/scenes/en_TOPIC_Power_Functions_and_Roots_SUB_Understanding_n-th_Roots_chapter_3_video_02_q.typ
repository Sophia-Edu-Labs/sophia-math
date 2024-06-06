#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying n-th Roots]
// The title "Simplifying n-th Roots" is shown on this slide
#v(40pt)
#only("1-")[Simplify $sqrt[3]{27}$.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) 1]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) 2]  
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) 3]
// Answer option c) is shown from slide 4 onward 
#v(10pt)
#only("5-")[d) 4]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's practice simplifying n-th roots. What is the simplified value of the cube root of 27?")]
#only("2")[#voiceover("Is it 1,")]
#only("3")[#voiceover("or is it 2,")]
#only("4")[#voiceover("maybe it's 3,")]
#only("5")[#voiceover("or could it be 4?")]
]#questionDef(
questionText: "Simplify $\sqrt[3]{27}$.",
answerOptions: ("1", "2", "3", "4"),
correctAnswerIndex: 2
)