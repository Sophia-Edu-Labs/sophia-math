#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Transaction]
#v(40pt)
#only("1-")[In a stock transaction, who provides the stock?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Buyer]#only("2-")[#text(fill:red)[a) Buyer]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Seller]#only("3-")[#text(fill:green)[b) Seller]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Stock exchange]#only("4-")[#text(fill:red)[c) Stock exchange]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Government]#only("5-")[#text(fill:red)[d) Government]]
#only("1")[#voiceover("Unfortunately, that's not correct. Let's take a look at the right solution.")]
#only("2")[#voiceover("The buyer is not the one providing the stock in a transaction. The buyer is the one purchasing the stock.")]
#only("3")[#voiceover("The seller is indeed the one who provides the stock in a transaction. They are the current owner of the stock who is selling it to the buyer.")]
#only("4")[#voiceover("The stock exchange is the marketplace where the transaction occurs, but it does not directly provide the stock being traded.")]
#only("5")[#voiceover("The government regulates the stock market but does not directly provide stocks in individual transactions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[In a stock transaction:]
#v(20pt)
#only("2-")[- 🤝 Two parties: #text(weight: "bold")[buyer] and #text(weight: "bold")[seller]]
#only("3-")[- 💰 Buyer provides money]
#only("4-")[- 📜 Seller provides stock ownership]
#only("5-")[- 🏛️ Exchange facilitates the transaction]

#only("1")[#voiceover("Let's break this down step by step.")]
#only("2")[#voiceover("In any stock transaction, there are two main parties involved: the buyer and the seller.")]
#only("3")[#voiceover("The buyer is the one providing the money to purchase the stock.")]
#only("4")[#voiceover("The seller, who currently owns the stock, provides the ownership of that stock to the buyer in exchange for the money.")]
#only("5")[#voiceover("The stock exchange, like the NYSE or NASDAQ, provides the marketplace for this transaction to occur, matching buyers with sellers. But the exchange itself does not provide the stocks.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[In a stock transaction:]
#v(20pt)
#only("2-")[- #text(fill:green)[Seller provides the stock] 📜]
#only("3-")[- Buyer purchases the stock 💰]
#only("4-")[- Exchange facilitates the trade 🏛️]
#only("5-")[So remember, it's always the #text(weight: "bold")[seller] who provides the stock! 🌟]

#only("1")[#voiceover("To summarize:")]
#only("2")[#voiceover("The seller is the one who provides the stock in a transaction.")]
#only("3")[#voiceover("The buyer is the one who purchases that stock, providing money in exchange.")]
#only("4")[#voiceover("And the stock exchange is the marketplace that facilitates this transaction.")]
#only("5")[#voiceover("So always remember, in a stock transaction, it's the seller who provides the stock being traded. Great work on answering this question correctly!")]

]