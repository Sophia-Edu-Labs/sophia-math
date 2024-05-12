#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Transaction]
// The title "Stock Transaction" is shown on this slide
#v(40pt)
#only("1-")[In a stock transaction, who provides the stock?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Buyer]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Seller]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Stock exchange]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Government]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of stock transactions. In a stock transaction, who provides the stock?")]
#only("2")[#voiceover("Is it the buyer,")]
#only("3")[#voiceover("or is it the seller,")]
#only("4")[#voiceover("or maybe the stock exchange,")]
#only("5")[#voiceover("or is it the government?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "In a stock transaction, who provides the stock?", 
answerOptions: ("Buyer", "Seller", "Stock exchange", "Government"),
correctAnswerIndex: 1,
)