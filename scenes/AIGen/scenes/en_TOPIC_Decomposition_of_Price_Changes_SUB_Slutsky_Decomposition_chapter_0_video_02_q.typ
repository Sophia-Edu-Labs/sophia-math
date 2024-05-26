#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
// The title "Slutsky Decomposition" is shown on this slide
#v(40pt)
#only("1-")[What does Slutsky Decomposition separate the effect of a price change into? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Substitution and income effects]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Supply and demand effects]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Elasticity and inelasticity effects]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Marginal and average effects]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on Slutsky Decomposition. What does Slutsky Decomposition separate the effect of a price change into?")]
#only("2")[#voiceover("Does it separate the effect into substitution and income effects,")]
#only("3")[#voiceover("or into supply and demand effects,")]
#only("4")[#voiceover("or maybe into elasticity and inelasticity effects,")]
#only("5")[#voiceover("or into marginal and average effects?")]
]#questionDef(
questionText: "What does Slutsky Decomposition separate the effect of a price change into?",
answerOptions: ("$Substitution$ and $income$ effects", "$Supply$ and $demand$ effects", "$Elasticity$ and $inelasticity$ effects", "$Marginal$ and $average$ effects"),
correctAnswerIndex: 0,
)