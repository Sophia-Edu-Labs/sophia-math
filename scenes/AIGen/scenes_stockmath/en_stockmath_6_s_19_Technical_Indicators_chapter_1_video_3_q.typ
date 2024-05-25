#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[RSI Interpretation]
// The title "RSI Interpretation" is shown on this slide
#v(40pt)
#only("1-")[If an RSI value is above 70, the stock is generally considered:]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Undervalued 📉]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Overvalued 📈]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Stable 🎯]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) None of the above 🚫]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on RSI interpretation. If an RSI value is above 70, the stock is generally considered:")]
#only("2")[#voiceover("Undervalued,")]
#only("3")[#voiceover("Overvalued,")]
#only("4")[#voiceover("Stable,")]
#only("5")[#voiceover("or none of the above?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "If an RSI value is above 70, the stock is generally considered:",
answerOptions: ("Undervalued", "Overvalued", "Stable", "None of the above"),
correctAnswerIndex: 1,
)