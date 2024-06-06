#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rationalizing n-th Roots]
// The title "Rationalizing n-th Roots" is shown on this slide
#v(40pt)
#only("1-")[Rationalize $1/root(3, 2)$]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $root(3, 2)/2$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $root(3, 4)/2$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $root(3, 8)/4$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $root(3, 4)/4$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's practice rationalizing n-th roots. How would you rationalize 1 over the cube root of 2?")]
#only("2")[#voiceover("Is it the cube root of 2 over 2,")]
#only("3")[#voiceover("or is it the cube root of 4 over 2,")]
#only("4")[#voiceover("or maybe the cube root of 8 over 4,")]
#only("5")[#voiceover("or is it the cube root of 4 over 4?")]
]#questionDef(
questionText: "Rationalize $\frac{1}{\sqrt[3]{2}}$",
answerOptions: ("$\frac{\sqrt[3]{2}}{2}$", "$\frac{\sqrt[3]{4}}{2}$", "$\frac{\sqrt[3]{8}}{4}$", "$\frac{\sqrt[3]{4}}{4}$"),
correctAnswerIndex: 1,
)