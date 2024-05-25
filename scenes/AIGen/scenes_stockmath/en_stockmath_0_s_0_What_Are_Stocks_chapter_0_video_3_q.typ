#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Ownership]
// The title "Stock Ownership" is shown on this slide
#v(40pt)
#only("1-")[If you own a stock in a company, you are:]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) a creditor]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) an owner]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) a consultant]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) an employee]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's check your understanding of stock ownership. If you own a stock in a company, what is your role?")]
#only("2")[#voiceover("Are you a creditor of the company,")]
#only("3")[#voiceover("or are you an owner of the company,")]
#only("4")[#voiceover("or maybe a consultant to the company,")]
#only("5")[#voiceover("or are you an employee of the company?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "If you own a stock in a company, you are:",
answerOptions: ("a creditor", "an owner", "a consultant", "an employee"),
correctAnswerIndex: 1,
)