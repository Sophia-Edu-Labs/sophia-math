#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Primary Purpose of the Stock Market]
// The title "Primary Purpose of the Stock Market" is shown on this slide
#v(40pt)
#only("1-")[What is the primary purpose of the stock market?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Buying products 🛍️]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Selling services 🔧]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Trading shares of companies 📈]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Exchanging currencies 💱]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of the stock market. What is the primary purpose of the stock market?")]
#only("2")[#voiceover("Is it for buying products,")]
#only("3")[#voiceover("or for selling services,")]
#only("4")[#voiceover("or is it for trading shares of companies,")]
#only("5")[#voiceover("or is the primary purpose of the stock market to exchange currencies?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is the primary purpose of the stock market?", 
answerOptions: ("Buying products", "Selling services", "Trading shares of companies", "Exchanging currencies"),
correctAnswerIndex: 2
)