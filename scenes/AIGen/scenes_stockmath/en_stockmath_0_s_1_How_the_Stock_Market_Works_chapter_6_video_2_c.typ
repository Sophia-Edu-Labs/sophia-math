#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buying Stocks]
#v(40pt)
#only("1-")[What is the first step an investor needs to take to buy stocks?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Contact a company directly]#only("2-")[#text(fill:red)[a) Contact a company directly]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct. 
#only("-2")[b) Set up a brokerage account]#only("3-")[#text(fill:green)[b) Set up a brokerage account]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Buy a stock index]#only("4-")[#text(fill:red)[c) Buy a stock index]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Visit the stock exchange]#only("5-")[#text(fill:red)[d) Visit the stock exchange]]
#v(40pt)

#only("1")[#voiceover("That's not correct, but let's take a look at the right solution.")]
#only("2")[#voiceover("a) Contacting a company directly is incorrect. While you could potentially buy stocks directly from a company, this is not the usual first step and not possible for most publicly traded companies.")]
#only("3")[#voiceover("b) Setting up a brokerage account is the correct answer. A brokerage account allows you to buy and sell stocks through a licensed broker.")]
#only("4")[#voiceover("c) Buying a stock index is incorrect. A stock index is a measurement of a section of the stock market, not something you can directly buy as your first step.")]
#only("5")[#voiceover("d) Visiting the stock exchange is also incorrect. While stock exchanges like the NYSE are where stocks are traded, you don't need to physically visit one to start buying stocks.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. #text(weight: "bold")[Research brokers] 🔍]
#v(20pt)
#only("2-")[2. #text(weight: "bold")[Choose a broker] 🤝]
#v(20pt)
#only("3-")[3. #text(weight: "bold")[Fill out application] 📝]
#v(20pt)
#only("4-")[4. #text(weight: "bold")[Fund your account] 💰]
#v(20pt)
#only("5-")[5. #text(weight: "bold")[Start buying stocks!] 📈]

#only("1")[#voiceover("The first step is to research different brokers. Look at factors like fees, investment options, and ease of use.")]
#only("2")[#voiceover("Once you've researched, choose the broker that best fits your needs.")]
#only("3")[#voiceover("Next, fill out the brokerage account application. You'll need to provide personal information and answer questions about your investment experience.")]
#only("4")[#voiceover("After your account is approved, you'll need to fund it. You can typically do this by linking a bank account and transferring money.")]
#only("5")[#voiceover("Once your account is funded, you can start buying stocks! Remember to diversify your portfolio and invest for the long term.")]
]