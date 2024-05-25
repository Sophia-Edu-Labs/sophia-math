#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Market Indices]
// The title "Market Indices" is shown on this slide
#v(40pt)
#only("1-")[Which of the following is a market index? 📈]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) U.S. Dollar 💵]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) Gold 🥇]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) S&P 500 📊]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) Treasury Bonds 🏦]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on market indices. Which of the following is a market index?")]
#only("2")[#voiceover("Is it the U.S. Dollar,")]
#only("3")[#voiceover("or is it Gold,")]
#only("4")[#voiceover("or maybe the S&P 500,")]
#only("5")[#voiceover("or are Treasury Bonds a market index?")]
]#questionDef(
questionText: "Which of the following is a market index?",
answerOptions: ("U.S. Dollar", "Gold", "S&P 500", "Treasury Bonds"),
correctAnswerIndex: 2
)