#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[One-Sided Limits]
// The title "One-Sided Limits" is shown on this slide
#v(40pt)
#only("1-")[What do one-sided limits check? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) The behavior of the function from both sides]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) The behavior of the function from one side]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) The behavior of the function at infinity ∞]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) The behavior of the function at zero 0️⃣]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of one-sided limits. What do one-sided limits check?")]
#only("2")[#voiceover("Do they check the behavior of the function from both sides,")]
#only("3")[#voiceover("or do they check the behavior of the function from just one side,")]
#only("4")[#voiceover("or maybe they check the behavior of the function at infinity,")]
#only("5")[#voiceover("or do they check the behavior of the function at zero?")]
]#questionDef(
questionText: "What do one-sided limits check?",
answerOptions: ("The behavior of the function from both sides", "The behavior of the function from one side", "The behavior of the function at infinity", "The behavior of the function at zero"),
correctAnswerIndex: 1,
)