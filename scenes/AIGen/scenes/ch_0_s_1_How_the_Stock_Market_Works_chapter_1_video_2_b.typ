#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Exchange]
#v(40pt)
#only("1-")[Which of the following is a stock exchange?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Bank of America]#only("2-")[#text(fill:red)[a) Bank of America]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) NASDAQ]#only("3-")[#text(fill:green)[b) NASDAQ]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Apple Inc.]#only("4-")[#text(fill:red)[c) Apple Inc.]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Federal Reserve]#only("5-")[#text(fill:red)[d) Federal Reserve]]
#only("1")[#voiceover("Sorry, that's not correct. Let's take a look at the right solution.")]
#only("2")[#voiceover("a) Bank of America is incorrect. Bank of America is a commercial bank, not a stock exchange.")]
#only("3")[#voiceover("b) NASDAQ is the right answer. NASDAQ is indeed a major American stock exchange.")]
#only("4")[#voiceover("c) Apple Inc. is incorrect. Apple is a technology company, not a stock exchange. Apple's stock is traded on exchanges like the NASDAQ.")]
#only("5")[#voiceover("d) Federal Reserve is also incorrect. The Federal Reserve is the central banking system of the United States, not a stock exchange.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[A stock exchange is:]
#v(20pt)
#only("2-")[- A marketplace where stocks are traded 📈]
#only("3-")[- It facilitates the buying and selling of securities 💰]
#only("4-")[- Examples: NASDAQ, NYSE, LSE 🏛️]
#v(40pt)
#only("5-")[NASDAQ (National Association of Securities Dealers Automated Quotations) is one of the world's largest electronic marketplaces for buying and selling securities, especially technology stocks. 🖥️]

#only("1")[#voiceover("Let's understand why NASDAQ is the correct answer by looking at what a stock exchange is.")]
#only("2")[#voiceover("A stock exchange is a marketplace where stocks and other securities are traded.")]
#only("3")[#voiceover("It facilitates the buying and selling of these securities between investors, traders, and companies.")]
#only("4")[#voiceover("Some of the most well-known stock exchanges are the NASDAQ, the New York Stock Exchange (NYSE), and the London Stock Exchange (LSE).")]
#only("5")[#voiceover("NASDAQ, which stands for National Association of Securities Dealers Automated Quotations, is one of the world's largest electronic marketplaces for buying and selling securities, especially technology stocks.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- NASDAQ is a stock exchange 📊]
#v(20pt)
#only("2-")[- Bank of America, Apple Inc., and Federal Reserve are not stock exchanges 🏦🍎🏛️]
#v(20pt)
#only("3-")[- Stock exchanges facilitate the trading of securities 📈]

#only("1")[#voiceover("To summarize, NASDAQ is a stock exchange.")]
#only("2")[#voiceover("While Bank of America is a bank, Apple Inc. is a technology company, and the Federal Reserve is a central banking system, none of these are stock exchanges.")]
#only("3")[#voiceover("Remember, stock exchanges are marketplaces that facilitate the buying and selling of securities like stocks.")]
]