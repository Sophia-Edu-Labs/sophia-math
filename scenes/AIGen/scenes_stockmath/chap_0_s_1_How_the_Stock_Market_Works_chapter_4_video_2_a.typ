#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Market Indices]
#v(40pt)
#only("1-")[Which of the following is a market index?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) U.S. Dollar]#only("2-")[#text(fill:red)[a) U.S. Dollar]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) Gold]#only("3-")[#text(fill:red)[b) Gold]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) S&P 500]#only("4-")[#text(fill:green)[c) S&P 500]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) Treasury Bonds]#only("5-")[#text(fill:red)[d) Treasury Bonds]]
#v(40pt)

#only("1")[#voiceover("Sorry, that's not correct. Let's take a look at the right solution.")]
#only("2")[#voiceover("a) The U.S. Dollar is a currency, not a market index. A market index measures a section of the stock market and is used as a benchmark for investments.")]
#only("3")[#voiceover("b) Gold is a commodity, not a market index. While gold prices can indicate economic trends, gold itself is not a market index.")]
#only("4")[#voiceover("c) The S&P 500 is indeed a market index. It's a stock market index that tracks the performance of 500 large companies listed on U.S. stock exchanges. It's one of the most commonly followed equity indices.")]
#only("5")[#voiceover("d) Treasury Bonds are debt securities issued by the U.S. government, not a market index. They are considered a safe investment but do not represent the stock market.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[What is a Market Index? 📈]
#v(40pt)
#only("1-")[- A statistical measure of change in a securities market]
#only("2-")[- Represents a portion of the stock market]
#only("3-")[- Used as a benchmark for investment performance 🎯]

#only("1")[#voiceover("A market index is a statistical measure of change in a securities market. It represents a segment of the market, such as the 500 largest companies or the technology sector.")]
#only("2")[#voiceover("Market indices are a way to track the performance of a group of securities that represent a portion of the overall market.")]
#only("3")[#voiceover("Investors use market indices as benchmarks to compare the performance of their individual portfolios and gauge market movements.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Examples of Market Indices]
#v(40pt)
#only("1-")[- S&P 500 (USA) 🇺🇸]
#only("2-")[- Dow Jones Industrial Average (USA) 🇺🇸]
#only("3-")[- NASDAQ Composite (USA) 🇺🇸]
#only("4-")[- FTSE 100 (UK) 🇬🇧]
#only("5-")[- DAX (Germany) 🇩🇪]
#only("6-")[- Nikkei 225 (Japan) 🇯🇵]

#only("1")[#voiceover("The S&P 500 is one of the most widely followed indices. It tracks the 500 largest publicly traded companies in the U.S.")]
#only("2")[#voiceover("The Dow Jones Industrial Average, or the Dow, is another major U.S. index. It follows 30 large, publicly-owned companies.")]
#only("3")[#voiceover("The NASDAQ Composite is an index of more than 3,000 stocks listed on the NASDAQ stock market, including many tech companies.")]
#only("4")[#voiceover("Outside the U.S., the FTSE 100 is a share index of the 100 companies listed on the London Stock Exchange with the highest market capitalization.")]
#only("5")[#voiceover("The DAX is a blue chip stock market index consisting of the 30 major German companies trading on the Frankfurt Stock Exchange.")]
#only("6")[#voiceover("The Nikkei 225 is the leading index of Japanese stocks. It is a price-weighted index comprised of Japan's top 225 blue-chip companies.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Market indices measure segments of the stock market 📊]
#only("2-")[- They serve as benchmarks for evaluating investment performance 📏]
#only("3-")[- Major indices include the S&P 500, Dow, NASDAQ, FTSE, DAX, and Nikkei 🌍]

#only("1")[#voiceover("To summarize, market indices are statistical tools that measure different segments of the stock market.")]
#only("2")[#voiceover("They serve as benchmarks that allow investors to track the general performance of the market and evaluate their own portfolios.")]
#only("3")[#voiceover("While there are many indices worldwide, some of the most widely followed are the S&P 500, Dow Jones Industrial Average, NASDAQ Composite, FTSE 100, DAX, and Nikkei 225.")]

]