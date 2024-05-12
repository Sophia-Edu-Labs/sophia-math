#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias]
// The title "Confirmation Bias" is shown on this slide
#v(40pt)
#only("1-")[A trader influenced by confirmation bias might:]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Ignore contrary evidence 🙈]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Seek diverse opinions 🔍]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Frequently change strategies 🔄]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Invest in low-risk stocks 📈]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of confirmation bias. A trader influenced by confirmation bias might:")]
#only("2")[#voiceover("Ignore contrary evidence,")]
#only("3")[#voiceover("or seek diverse opinions,")]
#only("4")[#voiceover("or frequently change strategies,")]
#only("5")[#voiceover("or invest in low-risk stocks?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "A trader influenced by confirmation bias might:",
answerOptions: ("Ignore contrary evidence", "Seek diverse opinions", "Frequently change strategies", "Invest in low-risk stocks"),
correctAnswerIndex: 0,
)