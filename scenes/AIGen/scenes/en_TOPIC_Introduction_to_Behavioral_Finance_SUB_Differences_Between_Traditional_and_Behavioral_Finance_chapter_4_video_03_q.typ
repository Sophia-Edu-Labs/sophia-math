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
#only("1-")[Loss aversion is the tendency to \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) prefer gains over losses 📈]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) avoid losses more than acquiring gains 🛡️]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) take more risks 🎲]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) ignore losses 🙈]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on loss aversion. Loss aversion is the tendency to blank.")]
#only("2")[#voiceover("Is it the tendency to prefer gains over losses,")]
#only("3")[#voiceover("or is it the tendency to avoid losses more than acquiring gains,")]
#only("4")[#voiceover("or maybe the tendency to take more risks,")]
#only("5")[#voiceover("or is it the tendency to ignore losses?")]
]#questionDef(
questionText: "Loss aversion is the tendency to \$_____\$ .",
answerOptions: ("prefer gains over losses", "avoid losses more than acquiring gains", "take more risks", "ignore losses"),
correctAnswerIndex: 1,
)