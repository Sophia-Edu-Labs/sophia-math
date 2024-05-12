#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Combining Indicators]
#v(40pt)
#only("1-")[Combining a Moving Average crossover with RSI readings can help traders identify:]
#v(40pt)
#only("2-")[a) Entry and exit points 🎯]
#v(10pt)
#only("3-")[b) Economic conditions 📊]
#v(10pt)
#only("4-")[c) Company performance 📈]
#v(10pt)
#only("5-")[d) Interest rate impacts 💸]

#only("1")[#voiceover("Let's test your knowledge on combining technical indicators. Combining a Moving Average crossover with RSI readings can help traders identify which of the following?")]
#only("2")[#voiceover("Is it entry and exit points,")]
#only("3")[#voiceover("economic conditions,")]
#only("4")[#voiceover("company performance,")]
#only("5")[#voiceover("or interest rate impacts?")]
]#questionDef(
questionText: "Combining a Moving Average crossover with RSI readings can help traders identify:",
answerOptions: ("Entry and exit points", "Economic conditions", "Company performance", "Interest rate impacts"),
correctAnswerIndex: 0
)