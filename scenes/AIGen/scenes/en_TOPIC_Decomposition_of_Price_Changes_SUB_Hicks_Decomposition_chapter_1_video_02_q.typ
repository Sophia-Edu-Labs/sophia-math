#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect]
// The title "Substitution Effect" is shown on this slide
#v(40pt)
#only("1-")[The substitution effect shows changes in consumption due to a change in \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) income]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) price]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) utility]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) quantity]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of the substitution effect. The substitution effect shows changes in consumption due to a change in what?")]
#only("2")[#voiceover("Is it a change in income,")]
#only("3")[#voiceover("or a change in price,")]
#only("4")[#voiceover("or maybe a change in utility,")]
#only("5")[#voiceover("or is it a change in quantity?")]
]#questionDef(
questionText: "The substitution effect shows changes in consumption due to a change in _____.",
answerOptions: ("income", "price", "utility", "quantity"),
correctAnswerIndex: 1,
)