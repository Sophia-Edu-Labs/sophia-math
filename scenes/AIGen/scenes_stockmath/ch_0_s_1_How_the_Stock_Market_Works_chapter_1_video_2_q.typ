#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Exchange]
// The title "Stock Exchange" is shown on this slide
#v(40pt)
#only("1-")[Which of the following is a stock exchange? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Bank of America 🏦]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) NASDAQ 📈]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Apple Inc. 🍎]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Federal Reserve 🏛️]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on stock exchanges. Which of the following is a stock exchange?")]
#only("2")[#voiceover("Is it Bank of America,")]
#only("3")[#voiceover("or is it NASDAQ,")]
#only("4")[#voiceover("or maybe Apple Inc.,")]
#only("5")[#voiceover("or is it the Federal Reserve?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which of the following is a stock exchange?",
answerOptions: ("Bank of America", "NASDAQ", "Apple Inc.", "Federal Reserve"),
correctAnswerIndex: 1
)