#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Prices 📈]
// The title "Stock Prices" with a chart emoji is shown on this slide
#v(40pt)
#only("1-")[What primarily determines the price of a stock?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) CEO's decision 🧑‍💼]
// Answer option a) with a CEO emoji is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Investor demand and supply 🤝]
// Answer option b) with a handshake emoji is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Fixed pricing 💰]
// Answer option c) with a money bag emoji is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Government regulations 🏛️]
// Answer option d) with a government building emoji is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on stock prices. What primarily determines the price of a stock?")]
#only("2")[#voiceover("Is it the CEO's decision,")]
#only("3")[#voiceover("or is it investor demand and supply,")]
#only("4")[#voiceover("or maybe fixed pricing,")]
#only("5")[#voiceover("or is it government regulations?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What primarily determines the price of a stock?",
answerOptions: ("CEO's decision", "Investor demand and supply", "Fixed pricing", "Government regulations"),
correctAnswerIndex: 1,
)