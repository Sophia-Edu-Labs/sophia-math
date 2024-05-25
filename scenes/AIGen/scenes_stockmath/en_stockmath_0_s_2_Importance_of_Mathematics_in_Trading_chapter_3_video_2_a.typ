#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 1 (MC)]
#v(40pt)
#only("1-")[What does a price-to-earnings (P/E) ratio help investors evaluate?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Company profitability]#only("2-")[#text(fill:green)[a) Company profitability]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Stock liquidity]#only("3-")[#text(fill:red)[b) Stock liquidity]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Market volatility]#only("4-")[#text(fill:red)[c) Market volatility]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Interest rates]#only("5-")[#text(fill:red)[d) Interest rates]]
#v(40pt)

#only("1")[#voiceover("That's not correct. Let's take a look at the right solution.")]
#only("2")[#voiceover("a) Company profitability is indeed what the P/E ratio helps evaluate. The P/E ratio is calculated by dividing a company's current stock price by its earnings per share. A higher P/E generally indicates that investors are expecting higher earnings growth in the future.")]
#only("3")[#voiceover("b) Stock liquidity is incorrect. While important, stock liquidity refers to how easily shares can be bought and sold and is not directly related to the P/E ratio.")]
#only("4")[#voiceover("c) Market volatility is also incorrect. Market volatility refers to the amount of uncertainty or risk related to the size of changes in a security's value. The P/E ratio does not directly measure this.")]
#only("5")[#voiceover("And d) Interest rates is incorrect as well. While interest rates can impact stock prices and thus P/E ratios indirectly, the P/E ratio itself does not evaluate interest rates.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[P/E Ratio Explained]
#v(40pt)

#only("1-")[The P/E ratio is calculated as:]
#v(20pt)
#only("2-")[P/E = Market Value per Share / Earnings per Share]
#v(20pt)
#only("3-")[- 📈 Higher P/E = Investors expect higher earnings growth]
#only("4-")[- 📉 Lower P/E = Investors expect lower earnings growth]

#v(40pt)

#only("1")[#voiceover("Let's dive a bit deeper into what the P/E ratio tells us.")]
#only("2")[#voiceover("The P/E ratio is calculated by dividing a company's current stock price, or market value per share, by its earnings per share.")]
#only("3")[#voiceover("A higher P/E ratio generally signifies that investors are anticipating higher earnings growth in the future compared to companies with a lower P/E.")]
#only("4")[#voiceover("Conversely, a lower P/E might indicate that investors are expecting lower earnings growth.")]
#only("5")[#voiceover("So in summary, the P/E ratio is a quick way for investors to get a sense of how much they are paying for a company's earnings and expected earnings growth. It's a key tool in evaluating a company's profitability and future prospects.")]

]