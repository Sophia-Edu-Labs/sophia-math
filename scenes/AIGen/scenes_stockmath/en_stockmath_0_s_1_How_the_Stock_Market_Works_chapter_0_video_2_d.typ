#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Market Purpose]
#v(40pt)
What is the primary purpose of the stock market?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Buying products]#only("2-")[#text(fill:red)[a) Buying products]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Selling services]#only("3-")[#text(fill:red)[b) Selling services]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Trading shares of companies]#only("4-")[#text(fill:green)[c) Trading shares of companies]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Exchanging currencies]#only("5-")[#text(fill:red)[d) Exchanging currencies]]
#v(40pt)
#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution. The primary purpose of the stock market is indeed...")]
#only("2")[#voiceover("a) Buying products is incorrect. While companies whose shares are traded on the stock market may produce products, the stock market itself is not for buying products directly.")]
#only("3")[#voiceover("b) Selling services is also incorrect. Similar to products, companies on the stock market may offer services, but the market itself is not a platform for selling services.")]
#only("4")[#voiceover("c) Trading shares of companies. This is the correct answer. The stock market's main purpose is to facilitate the buying and selling of shares of publicly traded companies.")]
#only("5")[#voiceover("d) Exchanging currencies is incorrect. While there are foreign exchange markets for trading currencies, this is not the primary function of the stock market.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stock Market Explained]
#v(40pt)
#only("1-")[- Platform for buying and selling shares 📈]
#v(20pt)
#only("2-")[- Shares represent ownership in a company 🏢]
#v(20pt)
#only("3-")[- Allows companies to raise capital 💰]
#v(20pt)
#only("4-")[- Enables investors to potentially profit 📈]
#only("1")[#voiceover("The stock market is a platform that enables the trading of company shares.")]
#only("2")[#voiceover("Shares represent a piece of ownership in a company. When you buy a share, you become a shareholder and own a small part of the company.")]
#only("3")[#voiceover("The stock market allows companies to raise capital by selling shares to the public. This capital can be used for growth, research, expansion, and more.")]
#only("4")[#voiceover("For investors, the stock market provides an opportunity to buy shares in companies they believe will perform well. If the company does well and the share price goes up, the investor can sell their shares for a profit.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Stock market is for trading company shares 📊]
#v(20pt)
#only("2-")[- Not for directly buying products or services 🛒❌]
#v(20pt)
#only("3-")[- Allows companies to raise funds and investors to potentially profit 📈💰]
#v(20pt)
#only("4-")[- An essential component of the global financial system 🌍💵]
#only("1")[#voiceover("To summarize, the stock market's primary purpose is facilitating the trade of company shares.")]
#only("2")[#voiceover("It's not a platform for directly buying products or services from companies.")]
#only("3")[#voiceover("Instead, it serves as a mechanism for companies to raise funds and for investors to potentially earn returns on their investments.")]
#only("4")[#voiceover("The stock market plays a crucial role in the global financial system, channeling capital to businesses and providing investment opportunities for individuals and institutions alike.")]
]