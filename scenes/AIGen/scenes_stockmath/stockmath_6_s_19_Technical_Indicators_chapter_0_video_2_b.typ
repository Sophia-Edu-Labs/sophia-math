#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Technical Indicators]
#v(40pt)
What do technical indicators primarily analyze to predict stock price movements?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Economic indicators]#only("2-")[#text(fill:red)[a) Economic indicators]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Historical stock prices and volume]#only("3-")[#text(fill:green)[b) Historical stock prices and volume]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) CEO decisions]#only("4-")[#text(fill:red)[c) CEO decisions]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Interest rates]#only("5-")[#text(fill:red)[d) Interest rates]]
#only("1")[#voiceover("Great job, that's the correct answer!")]
#only("2")[#voiceover("Economic indicators are not the primary focus of technical analysis. Technical indicators mainly look at historical price and volume data.")]
#only("3")[#voiceover("Historical stock prices and volume are indeed what technical indicators primarily analyze to predict future price movements. This is the essence of technical analysis.")]
#only("4")[#voiceover("CEO decisions, while they can impact stock prices, are not the primary data that technical indicators analyze.")]
#only("5")[#voiceover("Interest rates, similar to economic indicators, fall more under fundamental analysis rather than technical analysis.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Technical Analysis]
#v(40pt)
#only("1-")[Technical analysis is based on three key assumptions:]
#v(20pt)
#only("2-")[1. Market action discounts everything 📈]
#v(10pt)
#only("3-")[2. Prices move in trends 📉]
#v(10pt)
#only("4-")[3. History tends to repeat itself 🔁]
#v(40pt)
#only("5-")[Technical indicators, such as moving averages, RSI, MACD, etc., are mathematical calculations based on historic price and volume data, used to predict future price movements.]

#only("1")[#voiceover("Let's dive a bit deeper into how technical analysis works.")]
#only("2")[#voiceover("The first assumption is that market action discounts everything. This means that a stock's price reflects all relevant information, so studying price action is all that's needed.")]
#only("3")[#voiceover("The second assumption is that prices move in trends. Technical analysts believe that once a trend is established, future price movement is more likely to be in the same direction as the trend than against it.")]
#only("4")[#voiceover("The third assumption is that history tends to repeat itself. Technical analysts believe that certain price patterns will occur over and over again.")]
#only("5")[#voiceover("Based on these assumptions, technical indicators are mathematical formulas that analyze price and volume data to identify trends and predict future price movements.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Technical analysis focuses on historical price and volume data 📊]
#v(20pt)
#only("2-")[- It assumes that market action discounts everything, prices move in trends, and history repeats itself 🔍]
#v(20pt) 
#only("3-")[- Technical indicators are mathematical formulas applied to this data to predict future price movements 🧮]
#v(20pt)
#only("4-")[- In contrast, fundamental analysis looks at economic, financial and other qualitative and quantitative factors 📜]

#only("1")[#voiceover("To summarize, technical analysis is all about studying historical price and volume data.")]
#only("2")[#voiceover("It's based on the assumptions that the market price reflects all relevant information, that prices move in trends, and that historical patterns will recur.")]
#only("3")[#voiceover("Technical indicators are the tools used to analyze this data and predict future price movements based on past patterns.")]
#only("4")[#voiceover("This is different from fundamental analysis, which looks at a company's financial health, economic factors, and other qualitative and quantitative data to evaluate a stock.")]

]