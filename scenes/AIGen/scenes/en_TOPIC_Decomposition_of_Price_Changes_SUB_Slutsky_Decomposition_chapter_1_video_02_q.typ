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
#only("1-")[The substitution effect occurs when a price change makes a good \_\_\_\_\_.]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) absolutely cheaper 💰]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) relatively cheaper or more expensive 📈📉]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) absolutely more expensive 💸]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) none of the above ❌]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of the substitution effect in Slutsky Decomposition. The substitution effect occurs when a price change makes a good blank.")]
#only("2")[#voiceover("Does it make the good absolutely cheaper,")]
#only("3")[#voiceover("or relatively cheaper or more expensive,")]
#only("4")[#voiceover("or absolutely more expensive,")]
#only("5")[#voiceover("or none of the above?")]
]#questionDef(
questionText: "The substitution effect occurs when a price change makes a good _____.",
answerOptions: ("absolutely cheaper", "relatively cheaper or more expensive", "absolutely more expensive", "none of the above"),
correctAnswerIndex: 1
)