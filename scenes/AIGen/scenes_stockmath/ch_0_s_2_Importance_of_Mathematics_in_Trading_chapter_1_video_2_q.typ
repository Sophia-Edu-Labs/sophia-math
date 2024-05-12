#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Trading 📈]
// The title "Stock Trading" with a chart emoji is shown on this slide
#v(40pt)
#only("1-")[Where are stocks traded?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) Supermarkets 🛒]
// Answer option a) with a shopping cart emoji is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Stock exchanges 📊]
// Answer option b) with a bar chart emoji is shown from slide 3 onward
#v(10pt)
#only("4-")[c) Banks 🏦]
// Answer option c) with a bank emoji is shown from slide 4 onward
#v(10pt) 
#only("5-")[d) Online stores 💻]
// Answer option d) with a computer emoji is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on stock trading. Where are stocks traded?")]
#only("2")[#voiceover("Are they traded in supermarkets,")]
#only("3")[#voiceover("or are they traded on stock exchanges,")]
#only("4")[#voiceover("or maybe in banks,")]
#only("5")[#voiceover("or are they traded in online stores?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Where are stocks traded?",
answerOptions: ("Supermarkets", "Stock exchanges", "Banks", "Online stores"),
correctAnswerIndex: 1
)