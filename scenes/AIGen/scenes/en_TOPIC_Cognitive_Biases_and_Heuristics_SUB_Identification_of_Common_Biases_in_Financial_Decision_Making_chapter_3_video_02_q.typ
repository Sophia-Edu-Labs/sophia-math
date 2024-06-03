#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion]
// The title "Loss Aversion" is shown on this slide
#v(40pt)
#only("1-")[What is loss aversion?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Preferring gains over losses 📈]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Preferring avoiding losses over acquiring gains 🛡️]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Indifference to gains and losses 😐]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above ❌]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of loss aversion. What is loss aversion?")]
#only("2")[#voiceover("Is it preferring gains over losses,")]
#only("3")[#voiceover("or is it preferring avoiding losses over acquiring gains,")]
#only("4")[#voiceover("or maybe indifference to gains and losses,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "What is loss aversion?",
answerOptions: ("Preferring gains over losses", "Preferring avoiding losses over acquiring gains", "Indifference to gains and losses", "None of the above"),
correctAnswerIndex: 1,
)