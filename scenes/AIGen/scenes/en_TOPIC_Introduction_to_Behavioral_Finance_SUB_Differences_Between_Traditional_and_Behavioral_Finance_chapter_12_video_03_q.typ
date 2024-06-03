#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior]
// The title "Herd Behavior" is shown on this slide
#v(40pt)
#only("1-")[Herd behavior can lead to \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) market stability 📈]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) accurate predictions 🎯]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) market bubbles or crashes 💥]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) reduced risk 🛡️]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on herd behavior in financial markets. Herd behavior can lead to blank.")]
#only("2")[#voiceover("Does it lead to market stability,")]
#only("3")[#voiceover("or does it lead to accurate predictions,")]
#only("4")[#voiceover("or maybe it leads to market bubbles or crashes,")]
#only("5")[#voiceover("or does it lead to reduced risk?")]
]#questionDef(
questionText: "Herd behavior can lead to $\textbf{market bubbles or crashes}$.",
answerOptions: ("market stability", "accurate predictions", "market bubbles or crashes", "reduced risk"),
correctAnswerIndex: 2,
)