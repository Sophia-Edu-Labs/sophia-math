#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Heuristics in Behavioral Finance]
// The title "Heuristics in Behavioral Finance" is shown on this slide
#v(40pt)
#only("1-")[Using heuristics can lead to \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) more accurate decisions 🎯]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) biases 🧠]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) better investment strategies 📈]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) reduced risk ⚖]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on heuristics in behavioral finance. Using heuristics can lead to...")]
#only("2")[#voiceover("More accurate decisions,")]
#only("3")[#voiceover("biases,")]
#only("4")[#voiceover("better investment strategies,")]
#only("5")[#voiceover("or reduced risk?")]
]#questionDef(
questionText: "Using heuristics can lead to ______.",
answerOptions: ("more accurate decisions", "biases", "better investment strategies", "reduced risk"),
correctAnswerIndex: 1,
)