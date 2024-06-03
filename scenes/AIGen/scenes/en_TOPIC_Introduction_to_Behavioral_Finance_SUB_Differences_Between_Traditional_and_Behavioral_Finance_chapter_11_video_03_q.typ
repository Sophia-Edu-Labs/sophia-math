#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias]
// The title "Anchoring Bias" is shown on this slide
#v(40pt)
#only("1-")[Anchoring bias can lead to \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) more accurate decisions 🎯]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) better investment strategies 📈]
// Answer option b) is shown from slide 3 onward
#v(10pt) 
#only("4-")[c) overestimating or underestimating values 📊]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) reduced risk ⚖]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on anchoring bias. Anchoring bias can lead to...")]
#only("2")[#voiceover("More accurate decisions,")]
#only("3")[#voiceover("better investment strategies,")]
#only("4")[#voiceover("overestimating or underestimating values,")]
#only("5")[#voiceover("or reduced risk?")]
]#questionDef(
questionText: "Anchoring bias can lead to \textbf{overestimating or underestimating values}.",
answerOptions: ("more accurate decisions", "better investment strategies", "overestimating or underestimating values", "reduced risk"),
correctAnswerIndex: 2,
)