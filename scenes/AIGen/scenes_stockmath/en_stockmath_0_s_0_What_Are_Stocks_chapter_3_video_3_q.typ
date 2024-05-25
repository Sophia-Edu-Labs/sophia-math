#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Common vs Preferred Stocks]

#v(40pt)

#only("1-")[- Two main types of stocks 📊]
#v(20pt)
#only("2-")[- Common stocks 🗳️]
#v(20pt)
#only("3-")[- Preferred stocks 🏆]

#only("1")[
#voiceover("There are two main types of stocks: common stocks and preferred stocks.")
]

#only("2")[
#voiceover("Common stocks typically come with voting rights.")
]

#only("3")[
#voiceover("Preferred stocks, on the other hand, usually don't have voting rights but have priority over dividends.")
]

#v(40pt)

#only("4-")[What is the key difference between common and preferred stocks? 🤔]

#only("4")[
#voiceover("So, what is the key difference between common and preferred stocks?")
]

]#questionDef(
questionText: "What is the key difference between common and preferred stocks?",
answerOptions: ("Common stocks have voting rights but lower dividend priority, while preferred stocks have no voting rights but higher dividend priority.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)