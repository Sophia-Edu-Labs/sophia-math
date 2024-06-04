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
#only("1-")[Loss aversion can lead to \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) better investment decisions 🤔]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) holding on to losing investments 📉]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) more accurate predictions 🔮]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) reduced risk 🛡️]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on loss aversion. Loss aversion can lead to...")]
#only("2")[#voiceover("better investment decisions,")]
#only("3")[#voiceover("holding on to losing investments,")]
#only("4")[#voiceover("more accurate predictions,")]
#only("5")[#voiceover("or reduced risk?")]
]

#questionDef(
questionText: "Loss aversion can lead to _____",
answerOptions: ("better investment decisions", "holding on to losing investments", "more accurate predictions", "reduced risk"),
correctAnswerIndex: 1,
)