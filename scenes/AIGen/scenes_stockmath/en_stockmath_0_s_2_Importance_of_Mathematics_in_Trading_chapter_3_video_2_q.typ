#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[P/E Ratio]
// The title "P/E Ratio" is shown on this slide
#v(40pt)
#only("1-")[What does a price-to-earnings (P/E) ratio help investors evaluate? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Company profitability 📈]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Stock liquidity 💧]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Market volatility 📊]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Interest rates 💰]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on the price-to-earnings ratio. What does a P/E ratio help investors evaluate?")]
#only("2")[#voiceover("Is it used to evaluate a company's profitability,")]
#only("3")[#voiceover("or does it measure a stock's liquidity,")]
#only("4")[#voiceover("or is it an indicator of market volatility,")]
#only("5")[#voiceover("or does it relate to interest rates?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What does a price-to-earnings (P/E) ratio help investors evaluate?",
answerOptions: ("Company profitability", "Stock liquidity", "Market volatility", "Interest rates"),
correctAnswerIndex: 0
)