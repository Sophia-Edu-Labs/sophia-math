#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[pH and pOH]
// The title "pH and pOH" is shown on this slide
#v(40pt)
#only("1-")[What is the relationship between pH and pOH?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) pH + pOH = 7]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) pH + pOH = 14]
// Answer option b) is shown from slide 3 onward
#v(10pt)  
#only("4-")[c) pH - pOH = 7]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) pH - pOH = 14]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the relationship between pH and pOH. What is the correct equation relating pH and pOH?")]
#only("2")[#voiceover("Is it pH plus pOH equals 7,")]
#only("3")[#voiceover("or is it pH plus pOH equals 14,")]
#only("4")[#voiceover("or maybe pH minus pOH equals 7,")]
#only("5")[#voiceover("or is it pH minus pOH equals 14?")]
]#questionDef(
questionText: "What is the relationship between $ \\text{pH} $ and $ \\text{pOH} $?",
answerOptions: ("$ \\text{pH} + \\text{pOH} = 7 $", "$ \\text{pH} + \\text{pOH} = 14 $", "$ \\text{pH} - \\text{pOH} = 7 $", "$ \\text{pH} - \\text{pOH} = 14 $"),
correctAnswerIndex: 1,
)