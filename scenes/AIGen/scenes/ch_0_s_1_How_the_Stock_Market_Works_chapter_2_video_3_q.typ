#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Buyer and Seller Motivations]
// The title "Buyer and Seller Motivations" is shown on all slides

#v(40pt)

#only("1-")[What might motivate:]
// The question "What might motivate:" is shown from slide 1 onward

#v(20pt)

#only("2-")[- A buyer to purchase stock? 🛒]
// The bullet point "A buyer to purchase stock? 🛒" is shown from slide 2 onward

#v(20pt)

#only("3-")[- A seller to sell stock? 💰]
// The bullet point "A seller to sell stock? 💰" is shown from slide 3 onward

#only("1")[
#voiceover("Consider the stock market and its participants.")
]

#only("2")[
#voiceover("What reasons might a buyer have to purchase a company's stock?") 
]

#only("3")[
#voiceover("On the other hand, what could motivate a seller to part with their stock?")
]

]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Explain what might motivate a buyer to purchase stock and a seller to sell stock.",
answerOptions: ("Buyers purchase stocks hoping that the value will increase over time, allowing them to sell at a profit. Sellers might sell stocks to realize gains from increased values or to cut losses if they anticipate a decline.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)