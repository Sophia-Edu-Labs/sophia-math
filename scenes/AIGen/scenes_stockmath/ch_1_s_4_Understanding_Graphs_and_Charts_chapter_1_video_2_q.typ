#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Chart Types]
#v(40pt)
#only("1-")[Which chart type provides information about a stock's opening, closing, high, and low prices within a specific period? 📈]
#v(40pt)
#only("2-")[a) Line chart]
#v(10pt)
#only("3-")[b) Bar chart]
#v(10pt)
#only("4-")[c) Candlestick chart]
#v(10pt)
#only("5-")[d) Pie chart]

#only("1")[#voiceover("Let's test your knowledge on chart types used in stock trading. Which chart type provides information about a stock's opening, closing, high, and low prices within a specific period?")]
#only("2")[#voiceover("Is it a line chart,")]
#only("3")[#voiceover("or a bar chart,")]
#only("4")[#voiceover("or maybe a candlestick chart,")]
#only("5")[#voiceover("or is it a pie chart?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Which chart type provides information about a stock's opening, closing, high, and low prices within a specific period?",
answerOptions: ("Line chart", "Bar chart", "Candlestick chart", "Pie chart"),
correctAnswerIndex: 2
)