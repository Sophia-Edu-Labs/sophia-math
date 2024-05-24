#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence in Trading]
// The title "Overconfidence in Trading" is shown on this slide
#v(40pt)
#only("1-")[Overconfidence in trading often leads to:]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Taking fewer risks 🌟]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Selling stocks prematurely ⏰]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Ignoring market data 📊]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Excessive trading 💸]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of behavioral biases in trading. Overconfidence in trading often leads to which of the following?")]
#only("2")[#voiceover("Does it lead to taking fewer risks,")]
#only("3")[#voiceover("or selling stocks prematurely,")]
#only("4")[#voiceover("or ignoring market data,")]
#only("5")[#voiceover("or does it lead to excessive trading?")]
]#questionDef(
questionText: "Overconfidence in trading often leads to:",
answerOptions: ("Taking fewer risks", "Selling stocks prematurely", "Ignoring market data", "Excessive trading"),
correctAnswerIndex: 3
)