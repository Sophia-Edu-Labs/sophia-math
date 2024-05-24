#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Where are stocks traded?]
#v(40pt)
#only("1-")[Great job! You selected the correct answer. Let's review why it's correct and why the other options are incorrect.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Supermarkets]#only("2-")[#text(fill:red)[a) Supermarkets]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Stock exchanges]#only("3-")[#text(fill:green)[b) Stock exchanges]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Banks]#only("4-")[#text(fill:red)[c) Banks]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Online stores]#only("5-")[#text(fill:red)[d) Online stores]]

#only("1")[#voiceover("Great job! You selected the correct answer. Let's review why it's correct and why the other options are incorrect.")]
#only("2")[#voiceover("Supermarkets are places where you buy groceries and household items, not where you trade stocks. So this answer is incorrect.")]
#only("3")[#voiceover("Stock exchanges are the correct answer. A stock exchange is a marketplace where stockbrokers and traders can buy and sell shares of stocks, bonds, and other securities.")]
#only("4")[#voiceover("While banks offer many financial services, they are not the primary venue for trading stocks. So this answer is also incorrect.")]
#only("5")[#voiceover("Online stores are for purchasing goods over the internet, not for trading stocks. Therefore, this answer is incorrect as well.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[More about Stock Exchanges 🏛️]
#v(40pt)
#only("1-")[- Physical or virtual marketplaces 🏬]
#v(20pt)
#only("2-")[- Facilitate the buying and selling of stocks 💰]
#v(20pt)
#only("3-")[- Provide a platform for price discovery 📈]
#v(20pt)
#only("4-")[- Ensure fair and orderly trading 🤝]
#v(20pt)
#only("5-")[- Examples: NYSE, NASDAQ, LSE 🌎]

#only("1")[#voiceover("Stock exchanges can be physical locations or virtual marketplaces.")]
#only("2")[#voiceover("Their primary function is to facilitate the buying and selling of stocks and other securities.")]
#only("3")[#voiceover("They provide a platform for price discovery, which means that the interactions of buyers and sellers determine the price of a stock.")]
#only("4")[#voiceover("Stock exchanges also ensure that trading is conducted in a fair and orderly manner, with all participants having access to the same information.")]
#only("5")[#voiceover("Some of the most well-known stock exchanges include the New York Stock Exchange (NYSE), the NASDAQ, and the London Stock Exchange (LSE).")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Stocks are traded on stock exchanges 📜]
#v(20pt)
#only("2-")[- Stock exchanges are marketplaces for buying and selling stocks 🏦]
#v(20pt)
#only("3-")[- They ensure fair and orderly trading 🤝]
#v(20pt)
#only("4-")[- Examples include NYSE, NASDAQ, and LSE 🌍]

#only("1")[#voiceover("To summarize, stocks are traded on stock exchanges.")]
#only("2")[#voiceover("Stock exchanges serve as marketplaces for buying and selling stocks and other securities.")]
#only("3")[#voiceover("They play a crucial role in ensuring that trading is conducted fairly and in an orderly manner.")]
#only("4")[#voiceover("And some of the most prominent stock exchanges in the world are the NYSE, NASDAQ, and LSE.")]
]