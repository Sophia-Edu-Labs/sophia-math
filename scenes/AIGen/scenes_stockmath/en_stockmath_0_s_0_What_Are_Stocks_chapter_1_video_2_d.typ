#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Market]
#v(40pt)
#only("1-")[The stock market is primarily for buying and selling what?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Bonds]#only("2-")[#text(fill:red)[a) Bonds]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Stocks]#only("3-")[#text(fill:green)[b) Stocks]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Currencies]#only("4-")[#text(fill:red)[c) Currencies]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Commodities]#only("5-")[#text(fill:red)[d) Commodities]]
#v(40pt)

#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution.")]
#only("2")[#voiceover("a) Bonds is incorrect. While bonds can be traded, the stock market is primarily focused on stocks, not bonds.")]
#only("3")[#voiceover("b) Stocks is the correct answer. The stock market is a marketplace where stocks, which represent ownership shares in companies, are bought and sold.")]
#only("4")[#voiceover("c) Currencies is incorrect. Currency trading happens in the foreign exchange market, not the stock market.")]
#only("5")[#voiceover("d) Commodities is also incorrect. Commodities like gold, oil, and agricultural products are traded on commodity markets, not the stock market.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stock Market Explained]
#v(40pt)
#only("1-")[- Market where shares of publicly held companies are issued and traded 📈]
#v(20pt)
#only("2-")[- Allows companies to raise capital by selling shares 💰]
#v(20pt)
#only("3-")[- Investors buy shares to earn a return on their investment 📈]
#v(20pt)
#only("4-")[- Share prices fluctuate based on supply and demand 📊]

#only("1")[#voiceover("The stock market is a market where shares of publicly held companies are issued and traded.")]
#only("2")[#voiceover("It serves as a way for companies to raise capital by selling part ownership in the form of shares to investors.")]
#only("3")[#voiceover("Investors buy these shares with the expectation that the company will grow and generate profits, thus increasing the value of their shares and providing a return on their investment.")]
#only("4")[#voiceover("The prices of shares fluctuate based on supply and demand in the market, which is influenced by a multitude of economic and company-specific factors.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Stock market primarily trades stocks (shares of companies) 📈]
#v(20pt)
#only("2-")[- Bonds (debt), currencies, and commodities are traded in other markets 💹]
#v(20pt) 
#only("3-")[- Stock market is crucial for companies to raise capital and for investors to potentially earn returns 💸]

#only("1")[#voiceover("So remember, the stock market is primarily for buying and selling stocks, which are shares that represent ownership in companies.")]
#only("2")[#voiceover("Other financial instruments like bonds, currencies, and commodities are traded in separate, specialized markets.")]
#only("3")[#voiceover("The stock market plays a vital role in the economy by allowing companies to raise capital and providing investors with opportunities to grow their wealth.")]
]