#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Technical Indicators]
#v(40pt)
#only("1-")[Which technical indicator is used to smooth out price data by creating a constantly updated average price?]
#v(40pt)
#only("2-")[a) Moving Average]
#v(10pt)
#only("3-")[b) RSI]
#v(10pt)
#only("4-")[c) MACD]
#v(10pt)
#only("5-")[d) Bollinger Bands]

#only("1")[#voiceover("Let's test your knowledge on technical indicators. Which technical indicator is used to smooth out price data by creating a constantly updated average price?")]
#only("2")[#voiceover("Is it a Moving Average,")]
#only("3")[#voiceover("or is it RSI,")]
#only("4")[#voiceover("or maybe MACD,")]
#only("5")[#voiceover("or are Bollinger Bands used for this purpose?")]
]#questionDef(
questionText: "Which technical indicator is used to smooth out price data by creating a constantly updated average price?",
answerOptions: ("Moving Average", "RSI", "MACD", "Bollinger Bands"),
correctAnswerIndex: 0
)