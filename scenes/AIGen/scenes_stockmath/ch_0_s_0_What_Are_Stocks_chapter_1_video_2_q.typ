#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Market 📈]
// The title "Stock Market" with a chart increasing emoji is shown on this slide
#v(40pt)
#only("1-")[The stock market is primarily for buying and selling what?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Bonds 🏦]
// Answer option a) with a bank emoji is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Stocks 📜]
// Answer option b) with a scroll emoji is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Currencies 💱]
// Answer option c) with a currency exchange emoji is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Commodities 🌾]
// Answer option d) with a wheat emoji is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge about the stock market. The stock market is primarily for buying and selling what?")]
#only("2")[#voiceover("Is it bonds,")]
#only("3")[#voiceover("or is it stocks,")]
#only("4")[#voiceover("or maybe currencies,")]
#only("5")[#voiceover("or are commodities primarily traded on the stock market?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "The stock market is primarily for buying and selling what?", 
answerOptions: ("Bonds", "Stocks", "Currencies", "Commodities"),
correctAnswerIndex: 1
)