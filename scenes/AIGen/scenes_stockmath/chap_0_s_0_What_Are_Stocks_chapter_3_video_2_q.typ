#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Types of Stocks]
// The title "Types of Stocks" is shown on this slide
#v(40pt)
#only("1-")[Which type of stock typically has voting rights? 🗳️]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Bond stocks]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Preferred stocks]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Common stocks]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Non-voting stocks]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on types of stocks. Which type of stock typically has voting rights?")]
#only("2")[#voiceover("Is it bond stocks,")]
#only("3")[#voiceover("or preferred stocks,")]
#only("4")[#voiceover("or maybe common stocks,")]
#only("5")[#voiceover("or is it non-voting stocks?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which type of stock typically has voting rights?", 
answerOptions: ("Bond stocks", "Preferred stocks", "Common stocks", "Non-voting stocks"),
correctAnswerIndex: 2,
)