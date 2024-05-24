#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Trading Platforms 📈]
// The title "Trading Platforms 📈" is shown on all slides

#v(40pt)

#only("1-")[Trading platforms are an essential part of the modern stock market.]
// The statement "Trading platforms are an essential part of the modern stock market." is shown from slide 1 onward

#v(40pt)

#only("2-")[They facilitate the buying and selling of stocks. 🤝]
// The statement "They facilitate the buying and selling of stocks. 🤝" is shown from slide 2 onward

#v(40pt)

#only("3-")[Question: What is the function of a trading platform in the stock market? 🤔]
// The question "What is the function of a trading platform in the stock market? 🤔" is shown from slide 3 onward

#only("1")[
#voiceover("Trading platforms are an essential part of the modern stock market.")
]

#only("2")[
#voiceover("They facilitate the buying and selling of stocks.")
]

#only("3")[
#voiceover("Question: What is the function of a trading platform in the stock market?")
]

]#questionDef(
  questionText: "What is the function of a trading platform in the stock market?",
  answerOptions: ("A trading platform provides the technology and tools necessary for traders to execute buy and sell orders, access market data, and manage their investment portfolios.", "The answer is incorrect."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)