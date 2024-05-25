#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stocks in a Company]
// The title "Stocks in a Company" is shown on this slide
#v(40pt)
#only("1-")[What do stocks represent in a company? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Debts 💸]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Ownership 👑]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Partnership 🤝]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Loans 🏦]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of stocks. What do stocks represent in a company?")]
#only("2")[#voiceover("Do they represent debts,")]
#only("3")[#voiceover("or do they represent ownership,")]
#only("4")[#voiceover("or maybe they represent partnership,")]
#only("5")[#voiceover("or do stocks represent loans?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What do stocks represent in a company?", 
answerOptions: ("Debts", "Ownership", "Partnership", "Loans"),
correctAnswerIndex: 1,
)