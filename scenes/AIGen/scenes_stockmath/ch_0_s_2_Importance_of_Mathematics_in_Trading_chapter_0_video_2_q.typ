#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Trading]
// The title "Stock Trading" is shown on this slide
#v(40pt)
#only("1-")[What is stock trading? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Buying only 🛒]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Selling only 💰]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Buying and selling shares of companies 📈]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Exchanging goods 🔄]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of stock trading. What does stock trading involve?")]
#only("2")[#voiceover("Is it only about buying stocks,")]
#only("3")[#voiceover("or is it only about selling stocks,")]
#only("4")[#voiceover("or does it involve both buying and selling shares of companies,")]
#only("5")[#voiceover("or is it about exchanging goods?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is stock trading?",
answerOptions: ("Buying only", "Selling only", "Buying and selling shares of companies", "Exchanging goods"),
correctAnswerIndex: 2,
)