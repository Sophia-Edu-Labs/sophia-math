#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Placing a Buy Order]
// The title "Placing a Buy Order" is shown on all slides

#v(40pt)

#only("1-")[To buy stocks, an investor needs to place a buy order through their brokerage account. 🛒]
// The brief explanation is shown from slide 1 onward

#v(40pt)

#only("2-")[What information does an investor need to provide when placing a buy order? 🤔]
// The question is shown from slide 2 onward

#only("1")[
#voiceover("To buy stocks, an investor needs to place a buy order through their brokerage account.")
]

#only("2")[
#voiceover("What information does an investor need to provide when placing a buy order?")
]

]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What information does an investor need to provide when placing a buy order?",
answerOptions: ("The stock they want to purchase, the number of shares, and the price at which they are willing to buy.", "The answer is incorrect or incomplete."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)