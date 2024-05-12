#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Candlestick Charts]
#v(40pt)
#only("1-")[In a candlestick chart, a candlestick with a long upper shadow and short lower shadow generally indicates what market sentiment?]
#v(40pt)
#only("2-")[a) Bullish 🐮]
#v(10pt)
#only("3-")[b) Bearish 🐻]
#v(10pt)
#only("4-")[c) Neutral 😐]
#v(10pt)
#only("5-")[d) Volatile 📈📉]

#only("1")[#voiceover("Let's test your understanding of candlestick charts. In a candlestick chart, a candlestick with a long upper shadow and short lower shadow generally indicates what market sentiment?")]
#only("2")[#voiceover("Is it bullish,")]
#only("3")[#voiceover("or bearish,")]
#only("4")[#voiceover("or neutral,")]
#only("5")[#voiceover("or does it indicate a volatile market sentiment?")]
]#questionDef(
questionText: "In a candlestick chart, a candlestick with a long upper shadow and short lower shadow generally indicates what market sentiment?",
answerOptions: ("Bullish", "Bearish", "Neutral", "Volatile"),
correctAnswerIndex: 0,
)