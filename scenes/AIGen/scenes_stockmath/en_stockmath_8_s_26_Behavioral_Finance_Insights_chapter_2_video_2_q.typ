#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion in Trading]
// The title "Loss Aversion in Trading" is shown on this slide
#v(40pt)
#only("1-")[How can loss aversion affect trading strategies? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) By encouraging diversified portfolios 📊]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) By causing delay in selling losing stocks 📉]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) By promoting frequent trading 🔄]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) By reducing investment in stocks 📉]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of behavioral biases in trading. How can loss aversion affect trading strategies?")]
#only("2")[#voiceover("Is it by encouraging diversified portfolios,")]
#only("3")[#voiceover("or by causing delay in selling losing stocks,")]
#only("4")[#voiceover("or maybe by promoting frequent trading,")]
#only("5")[#voiceover("or by reducing investment in stocks?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "How can loss aversion affect trading strategies?", 
answerOptions: ("By encouraging diversified portfolios", "By causing delay in selling losing stocks", "By promoting frequent trading", "By reducing investment in stocks"),
correctAnswerIndex: 1,
)