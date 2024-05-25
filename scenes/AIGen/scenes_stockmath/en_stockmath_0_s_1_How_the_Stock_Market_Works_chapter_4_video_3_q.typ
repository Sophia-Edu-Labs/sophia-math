#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Market Indices 📈]
// The title "Market Indices" with a chart emoji is shown on all slides

#v(40pt)

#only("1-")[Why are market indices important for investors? 🤔]
// The question "Why are market indices important for investors?" with a thinking emoji is shown from slide 1 onward

#only("1")[
#voiceover("Let's consider the role of market indices in the stock market.")
]

#only("2")[
#voiceover("Why do you think market indices like the S&P 500 or Dow Jones Industrial Average are important for investors?")
]

]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Why are market indices important for investors?",
answerOptions: ("Market indices provide a snapshot of market trends and the health of the economy, helping investors make informed decisions about their investments.", "The answer is incorrect or incomplete."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)