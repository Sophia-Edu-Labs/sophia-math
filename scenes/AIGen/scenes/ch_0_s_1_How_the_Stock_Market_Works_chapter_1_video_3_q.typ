#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's consider the role of stock exchanges in the stock market.")
]

#text(size: 30pt, weight: "bold")[Stock Exchange Functions]
// The title "Stock Exchange Functions" is shown on all slides

#v(40pt)

#only("2-")[🏛️ Stock exchanges are organized markets where stocks are traded.]
// The bullet point about stock exchanges being organized markets is shown from slide 2 onward

#v(20pt)

#only("3-")[📈 They facilitate the buying and selling of stocks.]
// The bullet point about stock exchanges facilitating buying and selling is shown from slide 3 onward

#v(20pt)

#only("4-")[📜 Stock exchanges provide a regulated environment for trading.]
// The bullet point about stock exchanges providing a regulated environment is shown from slide 4 onward

#v(40pt)

#only("5-")[What is the main function of a stock exchange in the context of the stock market? 🤔]
// The question is shown from slide 5 onward

#only("2")[
#voiceover("Stock exchanges are organized markets where stocks are traded.")
]

#only("3")[
#voiceover("They facilitate the buying and selling of stocks.")
]

#only("4")[
#voiceover("Stock exchanges provide a regulated environment for trading.")
]

#only("5")[
#voiceover("Now, what do you think is the main function of a stock exchange in the context of the stock market?")
]

]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is the main function of a stock exchange in the context of the stock market?",
answerOptions: ("A stock exchange provides a structured and regulated environment where stocks are listed, bought, and sold.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)