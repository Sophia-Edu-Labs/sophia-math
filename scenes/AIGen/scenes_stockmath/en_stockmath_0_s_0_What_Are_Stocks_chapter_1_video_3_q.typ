#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Market Influences]
// The title "Stock Market Influences" is shown on this slide
#v(40pt)
#only("1-")[What primarily influences stock prices on the stock market?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) CEO decisions 👨‍💼]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Supply and demand 📈📉]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Interest rates 💰]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Economic policies 📜]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of the stock market. What primarily influences stock prices on the stock market?")]
#only("2")[#voiceover("Is it the decisions made by company CEOs,")]
#only("3")[#voiceover("or is it the forces of supply and demand,")]
#only("4")[#voiceover("or perhaps interest rates,")]
#only("5")[#voiceover("or is it primarily influenced by economic policies?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What primarily influences stock prices on the stock market?", 
answerOptions: ("CEO decisions", "Supply and demand", "Interest rates", "Economic policies"),
correctAnswerIndex: 1,
)