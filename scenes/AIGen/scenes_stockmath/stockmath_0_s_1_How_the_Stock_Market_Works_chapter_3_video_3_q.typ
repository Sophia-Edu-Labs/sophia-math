#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Economic Conditions and Stock Prices]
// The title "Economic Conditions and Stock Prices" is shown on all slides

#v(40pt)

#only("1-")[#text()[🌍 Economy ⟷ 📈 Stock Market]]
// The text "🌍 Economy ⟷ 📈 Stock Market" is shown from slide 1 onward

#v(40pt)

#only("2-")[How might changes in economic conditions affect stock prices? 🤔]
// The question "How might changes in economic conditions affect stock prices? 🤔" is shown from slide 2 onward

#only("1")[
#voiceover("The economy and the stock market are closely intertwined.")
]

#only("2")[
#voiceover("Consider this: How might changes in economic conditions affect stock prices?")
]

]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "How might changes in economic conditions affect stock prices?",
answerOptions: ("Economic downturns typically lead to lower stock prices as investors anticipate worse financial performance and sell off stocks, while economic booms might boost stock prices as company earnings and investor confidence increase.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)